
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sub_category_model.g.dart';
part 'sub_category_model.freezed.dart';
@freezed
class SubCategoryModel with _$SubCategoryModel{
  factory SubCategoryModel({
    @Default('') String id,
    @Default('') String name,
    @Default('') String categoryName,
    @Default('') String slug,
    @Default('') String language,
    @Default('') String rowOrder,
  }) = _SubCategoryModel;

  factory SubCategoryModel.fromJson(Map<String, dynamic>json) => _$SubCategoryModelFromJson(json);
}
