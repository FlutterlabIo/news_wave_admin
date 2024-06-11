// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      categoryName: json['categoryName'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      rowOrder: json['rowOrder'] as String? ?? '',
      metaKeywords: json['metaKeywords'] as String? ?? '',
      schemaMarkUp: json['schemaMarkUp'] as String? ?? '',
      metaDescription: json['metaDescription'] as String? ?? '',
      categoryId: (json['categoryId'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'categoryName': instance.categoryName,
      'slug': instance.slug,
      'rowOrder': instance.rowOrder,
      'metaKeywords': instance.metaKeywords,
      'schemaMarkUp': instance.schemaMarkUp,
      'metaDescription': instance.metaDescription,
      'categoryId': instance.categoryId,
    };
