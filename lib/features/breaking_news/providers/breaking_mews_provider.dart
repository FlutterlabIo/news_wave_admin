
import 'package:flutter/widgets.dart';
import '../../../core/services/database_service.dart';
import '../../../core/util/custom_toast.dart';
import '../models/breaking_news_model.dart';
class BreakingMewsProvider extends ChangeNotifier{
  final idController = TextEditingController();
  final titleController = TextEditingController();
  final languageController = TextEditingController();
  final slugController = TextEditingController();
  final viewsController = TextEditingController();
  final contentTypeController = TextEditingController();
  final metaKeyword = TextEditingController();
  final desController = TextEditingController();

  bool _isExpired = false;
  bool get isExpired => _isExpired;

  void addIsExpiredValue(bool isExpired) {
    _isExpired = isExpired;
    notifyListeners();
  }
  final DatabaseBreakingNewsService _databaseService = DatabaseBreakingNewsService();
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
    if(slugController.text.trim().isEmpty){
      showErrorToast('Please Enter news category first');
      return;
    }
    if(contentTypeController.text.trim().isEmpty){
      showErrorToast('Please Enter news content type first');
      return;
    }
    if(viewsController.text.trim().isEmpty){
      showErrorToast('Please Enter news status first');
      return;
    }
    BreakingNewsModel news = BreakingNewsModel(
      description: desController.text,
        metaKeyword: metaKeyword.text,
        slug: slugController.text,
        views: viewsController.text,
        newsTitle: titleController.text,
        newsPhotoUrl: imageURL,
        contentType: contentTypeController.text,
        id: int.parse(idController.text),
        language: languageController.text,
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