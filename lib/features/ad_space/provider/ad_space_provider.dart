
import 'package:flutter/widgets.dart';
import 'package:news_wave_admin/core/util/custom_toast.dart';
import 'package:news_wave_admin/features/ad_space/model/ad_space_model.dart';
import 'package:news_wave_admin/features/ad_space/model/ad_space_model.dart';

import '../../../core/services/database_service.dart';


class AdSpaceProvider extends ChangeNotifier{
  final adSpaceController = TextEditingController();
  final languageController = TextEditingController();
  final statusController = TextEditingController();

  bool _isExpired = false;
  bool get isExpired => _isExpired;

  void addIsExpiredValue(bool isExpired) {
    _isExpired = isExpired;
    notifyListeners();
  }
  final DatabaseAdSpaceService _databaseService = DatabaseAdSpaceService();
  addNews({String? imageUrl, String? webImage}){
    if(adSpaceController.text.trim().isEmpty){
      showErrorToast('Please enter Ad Space first');
      return;
    }
    if(languageController.text.trim().isEmpty){
      showErrorToast('Please enter language first');
      return;
    }
    if(statusController.text.trim().isEmpty){
      showErrorToast('Please enter status first');
      return;
    }

    AdSpaceModel news = AdSpaceModel(
        adSpace: adSpaceController.text,
        language: languageController.text,
        status: statusController.text,
    );
    _databaseService.addNews(news);
    notifyListeners();

  }

  bool _isOpen = false;
  bool get isOpen => _isOpen;

  void toggleIsOpen() {
    _isOpen = !_isOpen;
    notifyListeners();
  }

}