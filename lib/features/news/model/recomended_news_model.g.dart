// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recomended_news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RecomendedNewsModelImpl _$$RecomendedNewsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RecomendedNewsModelImpl(
      createdAt: json['createdAt'] as String? ?? '',
      id: (json['id'] as num?)?.toInt() ?? 1,
      newsTitle: json['newsTitle'] as String? ?? '',
      language: json['language'] as String? ?? '',
      contentType: json['contentType'] as String? ?? '',
      categoryName: json['categoryName'] as String? ?? '',
      status: json['status'] as String? ?? '',
      isExpired: json['isExpired'] as String? ?? '',
      newsDes: json['newsDes'] as String? ?? '',
      newsPhotoUrl: json['newsPhotoUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$RecomendedNewsModelImplToJson(
        _$RecomendedNewsModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'id': instance.id,
      'newsTitle': instance.newsTitle,
      'language': instance.language,
      'contentType': instance.contentType,
      'categoryName': instance.categoryName,
      'status': instance.status,
      'isExpired': instance.isExpired,
      'newsDes': instance.newsDes,
      'newsPhotoUrl': instance.newsPhotoUrl,
    };
