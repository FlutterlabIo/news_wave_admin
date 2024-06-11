
import 'package:flutter/widgets.dart';
import 'package:news_wave_admin/core/util/custom_toast.dart';
import 'package:news_wave_admin/features/category/model/category_model.dart';
import 'package:news_wave_admin/features/sub_category/model/sub_category_model.dart';
import 'package:news_wave_admin/features/sub_category/model/sub_category_model.dart';

import '../../../core/services/database_service.dart';

class SubCategoryProvider extends ChangeNotifier{
  final DatabaseSubCategoryService _databaseService = DatabaseSubCategoryService();
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final categoryNameController = TextEditingController();
  final slugController = TextEditingController();
  final languageController = TextEditingController();
  final rowController = TextEditingController();

  addSubCategory(){
    if(idController.text.trim().isEmpty){
      showErrorToast('Please enter sub category name first ');
      return;
    }
    if(nameController.text.trim().isEmpty){
      showErrorToast('Please enter sub category name first ');
      return;
    }
    if(categoryNameController.text.trim().isEmpty){
      showErrorToast('Please enter  category name first ');
      return;
    }
    if(slugController.text.trim().isEmpty){
      showErrorToast('Please enter category slug first ');
      return;
    }

    if(rowController.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }

    SubCategoryModel categories = SubCategoryModel(
      id: idController.text,
       name: nameController.text,
        categoryName: categoryNameController.text,
        slug: slugController.text,
        rowOrder: rowController.text,
      language: languageController.text
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