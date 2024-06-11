
import 'package:flutter/widgets.dart';
import 'package:news_wave_admin/core/util/custom_toast.dart';

import '../../../core/services/database_service.dart';
import '../model/recomended_news_model.dart';

class RecommendedNewsProvider extends ChangeNotifier{
  final idController = TextEditingController();
  final titleController = TextEditingController();
  final languageController = TextEditingController();
  final categoryNameController = TextEditingController();
  final contentTypeController = TextEditingController();
  final statusController = TextEditingController();
  final desController = TextEditingController();

  bool _isExpired = false;
  bool get isExpired => _isExpired;

  void addIsExpiredValue(bool isExpired) {
    _isExpired = isExpired;
    notifyListeners();
  }
  final DatabaseNewsService _databaseService = DatabaseNewsService();
  addNews(imageURL){
    if(idController.text.trim().isEmpty){
      showErrorToast('Please enter news id first');
      return;
    }
    if(titleController.text.trim().isEmpty){
      showErrorToast('Please enter news title first');
      return;
    }
    if(desController.text.trim().isEmpty){
      showErrorToast('Please enter news description first');
      return;
    }
    if(languageController.text.trim().isEmpty){
      showErrorToast('Please Enter news language first');
      return;
    }
    if(categoryNameController.text.trim().isEmpty){
      showErrorToast('Please Enter news category first');
      return;
    }
    if(contentTypeController.text.trim().isEmpty){
      showErrorToast('Please Enter news content type first');
      return;
    }
    if(statusController.text.trim().isEmpty){
      showErrorToast('Please Enter news status first');
      return;
    }
    RecomendedNewsModel news = RecomendedNewsModel(
        newsTitle: titleController.text,
        newsDes: desController.text,
        newsPhotoUrl: imageURL,
        categoryName: categoryNameController.text,
        contentType: contentTypeController.text,
        id: int.parse(idController.text),
        isExpired: isExpired.toString(),
        language: languageController.text,
        status: statusController.text,
        createdAt: DateTime.now().toString());

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