

import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_model.freezed.dart';
part 'category_model.g.dart';
@freezed
class CategoryModel with _$CategoryModel{
 factory CategoryModel({
    @Default('') String categoryName,
    @Default('') String slug,
    @Default('') String rowOrder,
    @Default('') String metaKeywords,
    @Default('') String schemaMarkUp,
    @Default('') String metaDescription,
    @Default(0) int categoryId
}) = _CategoryModel;

 factory CategoryModel.fromJson(Map<String, dynamic>json) => _$CategoryModelFromJson(json);
}
