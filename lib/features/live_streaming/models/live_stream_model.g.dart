// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_stream_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LiveStreamModelImpl _$$LiveStreamModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LiveStreamModelImpl(
      id: (json['id'] as num?)?.toInt() ?? 1,
      image: json['image'] as String? ?? '',
      title: json['title'] as String? ?? '',
      type: json['type'] as String? ?? '',
      url: json['url'] as String? ?? '',
      language: json['language'] as String? ?? '',
      metaKey: json['metaKey'] as String? ?? '',
      schemaMarkUp: json['schemaMarkUp'] as String? ?? '',
      metaTitle: json['metaTitle'] as String? ?? '',
      metaDes: json['metaDes'] as String? ?? '',
    );

Map<String, dynamic> _$$LiveStreamModelImplToJson(
        _$LiveStreamModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'title': instance.title,
      'type': instance.type,
      'url': instance.url,
      'language': instance.language,
      'metaKey': instance.metaKey,
      'schemaMarkUp': instance.schemaMarkUp,
      'metaTitle': instance.metaTitle,
      'metaDes': instance.metaDes,
    };
