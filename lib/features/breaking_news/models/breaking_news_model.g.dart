// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'breaking_news_model.dart';

_$BreakingNewsModelImpl _$$BreakingNewsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BreakingNewsModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 1,
      newsTitle: json['newsTitle'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      contentType: json['contentType'] as String? ?? '',
      description: json['description'] as String? ?? '',
      language: json['language'] as String? ?? '',
      views: json['views'] as String? ?? '',
      metaKeyword: json['metaKeyword'] as String? ?? '',
      newsPhotoUrl: json['newsPhotoUrl'] as String? ?? '',
    );

Map<String, dynamic> _$$BreakingNewsModelImplToJson(
        _$BreakingNewsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'newsTitle': instance.newsTitle,
      'slug': instance.slug,
      'contentType': instance.contentType,
      'description': instance.description,
      'language': instance.language,
      'views': instance.views,
      'metaKeyword': instance.metaKeyword,
      'newsPhotoUrl': instance.newsPhotoUrl,
    };
