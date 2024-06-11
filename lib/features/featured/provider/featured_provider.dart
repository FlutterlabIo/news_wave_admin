
import 'package:flutter/widgets.dart';
import 'package:news_wave_admin/core/util/custom_toast.dart';
import 'package:news_wave_admin/features/category/model/category_model.dart';
import 'package:news_wave_admin/features/featured/model/featured_model.dart';
import 'package:news_wave_admin/features/featured/model/featured_model.dart';
import 'package:news_wave_admin/features/sub_category/model/sub_category_model.dart';
import 'package:news_wave_admin/features/sub_category/model/sub_category_model.dart';

import '../../../core/services/database_service.dart';

class FeaturedProvider extends ChangeNotifier{
  final DatabaseFeaturedService _databaseService = DatabaseFeaturedService();
  final idController = TextEditingController();
  final titleController = TextEditingController();
  final slugController = TextEditingController();
  final newsType = TextEditingController();
  final videoType = TextEditingController();
  final filterType = TextEditingController();
  final appStyle = TextEditingController();
  final webStyle = TextEditingController();
  final language = TextEditingController();
  final status = TextEditingController();
  final order = TextEditingController();

  addFeatured(){
    if(idController.text.trim().isEmpty){
      showErrorToast('Please enter sub category name first ');
      return;
    }
    if(titleController.text.trim().isEmpty){
      showErrorToast('Please enter sub category name first ');
      return;
    }
    if(slugController.text.trim().isEmpty){
      showErrorToast('Please enter  category name first ');
      return;
    }
    if(newsType.text.trim().isEmpty){
      showErrorToast('Please enter category slug first ');
      return;
    }

    if(videoType.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }
    if(filterType.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }
    if(filterType.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }
    if(appStyle.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }
    if(webStyle.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }
    if(language.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }
    if(status.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }
    if(order.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }

    FeaturedModel categories = FeaturedModel(
        id: idController.text,
      title: titleController.text,
      slug: slugController.text,
      nerwsType: newsType.text,
      videoType: videoType.text,
      filterType: filterType.text,
      webStyle: webStyle.text,
      language: language.text,
      status: status.text,
      order: order.text
    );
    _databaseService.addSubCategory(categories);
    notifyListeners();
    debugPrint('Clicked!!');
  }

  bool _isOpen = false;
  bool get isOpen => _isOpen;

  void toggleIsOpen() {
    _isOpen = !_isOpen;
    notifyListeners();
  }

}