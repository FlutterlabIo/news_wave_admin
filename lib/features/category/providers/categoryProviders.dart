
import 'package:flutter/widgets.dart';
import 'package:news_wave_admin/core/util/custom_toast.dart';
import 'package:news_wave_admin/features/category/model/category_model.dart';

import '../../../core/services/database_service.dart';

class CategoryProvider extends ChangeNotifier{
  final DatabaseCategoryService _databaseService = DatabaseCategoryService();
  final idController = TextEditingController();
  final nameController = TextEditingController();
  final slugController = TextEditingController();
  final desController = TextEditingController();
  final keyController = TextEditingController();
  final rowController = TextEditingController();
  final schemaController = TextEditingController();
  addCategory(){
    if(idController.text.trim().isEmpty){
      showErrorToast('Please enter category id first ');
      return;
    }
    if(nameController.text.trim().isEmpty){
      showErrorToast('Please enter category name first ');
      return;
    }
    if(slugController.text.trim().isEmpty){
      showErrorToast('Please enter category slug first ');
      return;
    }
    if(desController.text.trim().isEmpty){
      showErrorToast('Please enter category description first ');
      return;
    }
    if(keyController.text.trim().isEmpty){
      showErrorToast('Please enter category key first ');
      return;
    }
    if(rowController.text.trim().isEmpty){
      showErrorToast('Please enter category row first ');
      return;
    }
    if(schemaController.text.trim().isEmpty){
      showErrorToast('Please enter category schema first ');
      return;
    }
    CategoryModel categories = CategoryModel(
      categoryId: int.parse(idController.text),
      categoryName: nameController.text,
      slug: slugController.text,
      metaDescription: desController.text,
      metaKeywords: keyController.text,
      rowOrder: rowController.text,
      schemaMarkUp: schemaController.text
    );
    _databaseService.addCategory(categories);
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