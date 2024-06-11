// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ad_space_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AdSpaceModelImpl _$$AdSpaceModelImplFromJson(Map<String, dynamic> json) =>
    _$AdSpaceModelImpl(
      adSpace: json['adSpace'] as String? ?? '',
      language: json['language'] as String? ?? '',
      image: json['image'] as String? ?? '',
      webImage: json['webImage'] as String? ?? '',
      status: json['status'] as String? ?? '',
    );

Map<String, dynamic> _$$AdSpaceModelImplToJson(_$AdSpaceModelImpl instance) =>
    <String, dynamic>{
      'adSpace': instance.adSpace,
      'language': instance.language,
      'image': instance.image,
      'webImage': instance.webImage,
      'status': instance.status,
    };
