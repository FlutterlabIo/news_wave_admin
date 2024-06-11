// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sub_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubCategoryModelImpl _$$SubCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SubCategoryModelImpl(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      categoryName: json['categoryName'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      language: json['language'] as String? ?? '',
      rowOrder: json['rowOrder'] as String? ?? '',
    );

Map<String, dynamic> _$$SubCategoryModelImplToJson(
        _$SubCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'categoryName': instance.categoryName,
      'slug': instance.slug,
      'language': instance.language,
      'rowOrder': instance.rowOrder,
    };
