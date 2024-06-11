// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'featured_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FeaturedModelImpl _$$FeaturedModelImplFromJson(Map<String, dynamic> json) =>
    _$FeaturedModelImpl(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      nerwsType: json['nerwsType'] as String? ?? '',
      videoType: json['videoType'] as String? ?? '',
      filterType: json['filterType'] as String? ?? '',
      appStyle: json['appStyle'] as String? ?? '',
      webStyle: json['webStyle'] as String? ?? '',
      language: json['language'] as String? ?? '',
      status: json['status'] as String? ?? '',
      order: json['order'] as String? ?? '',
    );

Map<String, dynamic> _$$FeaturedModelImplToJson(_$FeaturedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'slug': instance.slug,
      'nerwsType': instance.nerwsType,
      'videoType': instance.videoType,
      'filterType': instance.filterType,
      'appStyle': instance.appStyle,
      'webStyle': instance.webStyle,
      'language': instance.language,
      'status': instance.status,
      'order': instance.order,
    };
