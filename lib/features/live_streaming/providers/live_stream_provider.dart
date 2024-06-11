
import 'package:flutter/widgets.dart';
import 'package:news_wave_admin/features/live_streaming/models/live_stream_model.dart';
import '../../../core/services/database_service.dart';
import '../../../core/util/custom_toast.dart';
class LiveStreamProvider extends ChangeNotifier{
  final idController = TextEditingController();
  final titleController = TextEditingController();
  final typeController = TextEditingController();
  final urlController = TextEditingController();
  final languageController = TextEditingController();
  final metaKeyController = TextEditingController();
  final schemaMarkUpController = TextEditingController();
  final metaTitleController = TextEditingController();
  final metaDesController = TextEditingController();


  bool _isExpired = false;
  bool get isExpired => _isExpired;

  void addIsExpiredValue(bool isExpired) {
    _isExpired = isExpired;
    notifyListeners();
  }
  final DatabaseLiveStreamService _databaseService = DatabaseLiveStreamService();
  addNews(imageURL){
    if(idController.text.trim().isEmpty){
      showErrorToast('Please enter news id first');
      return;
    }
    if(titleController.text.trim().isEmpty){
      showErrorToast('Please enter title first');
      return;
    }
    if(typeController.text.trim().isEmpty){
      showErrorToast('Please enter type first');
      return;
    }
    if(urlController.text.trim().isEmpty){
      showErrorToast('Please Enter url first');
      return;
    }
    if(languageController.text.trim().isEmpty){
      showErrorToast('Please Enter language first');
      return;
    }
    if(metaKeyController.text.trim().isEmpty){
      showErrorToast('Please Enter meta key first');
      return;
    }
    if(schemaMarkUpController.text.trim().isEmpty){
      showErrorToast('Please Enter schema mark up first');
      return;
    }
    if(metaTitleController.text.trim().isEmpty){
      showErrorToast('Please Enter meta title first');
      return;
    }
    if(metaDesController.text.trim().isEmpty){
      showErrorToast('Please Enter meta description first');
      return;
    }
    LiveStreamModel news = LiveStreamModel(
      id: int.parse(idController.text),
      title: titleController.text,
      type: typeController.text,
      url: urlController.text,
      language: languageController.text,
      metaKey: metaKeyController.text,
      schemaMarkUp: schemaMarkUpController.text,
      metaTitle: metaTitleController.text,
      metaDes: metaDesController.text
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