// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_space_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdSpaceModel _$AdSpaceModelFromJson(Map<String, dynamic> json) {
  return _AdSpaceModel.fromJson(json);
}

/// @nodoc
mixin _$AdSpaceModel {
  String get adSpace => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get webImage => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdSpaceModelCopyWith<AdSpaceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdSpaceModelCopyWith<$Res> {
  factory $AdSpaceModelCopyWith(
          AdSpaceModel value, $Res Function(AdSpaceModel) then) =
      _$AdSpaceModelCopyWithImpl<$Res, AdSpaceModel>;
  @useResult
  $Res call(
      {String adSpace,
      String language,
      String image,
      String webImage,
      String status});
}

/// @nodoc
class _$AdSpaceModelCopyWithImpl<$Res, $Val extends AdSpaceModel>
    implements $AdSpaceModelCopyWith<$Res> {
  _$AdSpaceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adSpace = null,
    Object? language = null,
    Object? image = null,
    Object? webImage = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      adSpace: null == adSpace
          ? _value.adSpace
          : adSpace // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      webImage: null == webImage
          ? _value.webImage
          : webImage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdSpaceModelImplCopyWith<$Res>
    implements $AdSpaceModelCopyWith<$Res> {
  factory _$$AdSpaceModelImplCopyWith(
          _$AdSpaceModelImpl value, $Res Function(_$AdSpaceModelImpl) then) =
      __$$AdSpaceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String adSpace,
      String language,
      String image,
      String webImage,
      String status});
}

/// @nodoc
class __$$AdSpaceModelImplCopyWithImpl<$Res>
    extends _$AdSpaceModelCopyWithImpl<$Res, _$AdSpaceModelImpl>
    implements _$$AdSpaceModelImplCopyWith<$Res> {
  __$$AdSpaceModelImplCopyWithImpl(
      _$AdSpaceModelImpl _value, $Res Function(_$AdSpaceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adSpace = null,
    Object? language = null,
    Object? image = null,
    Object? webImage = null,
    Object? status = null,
  }) {
    return _then(_$AdSpaceModelImpl(
      adSpace: null == adSpace
          ? _value.adSpace
          : adSpace // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      webImage: null == webImage
          ? _value.webImage
          : webImage // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdSpaceModelImpl implements _AdSpaceModel {
  _$AdSpaceModelImpl(
      {this.adSpace = '',
      this.language = '',
      this.image = '',
      this.webImage = '',
      this.status = ''});

  factory _$AdSpaceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdSpaceModelImplFromJson(json);

  @override
  @JsonKey()
  final String adSpace;
  @override
  @JsonKey()
  final String language;
  @override
  @JsonKey()
  final String image;
  @override
  @JsonKey()
  final String webImage;
  @override
  @JsonKey()
  final String status;

  @override
  String toString() {
    return 'AdSpaceModel(adSpace: $adSpace, language: $language, image: $image, webImage: $webImage, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdSpaceModelImpl &&
            (identical(other.adSpace, adSpace) || other.adSpace == adSpace) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.webImage, webImage) ||
                other.webImage == webImage) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, adSpace, language, image, webImage, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AdSpaceModelImplCopyWith<_$AdSpaceModelImpl> get copyWith =>
      __$$AdSpaceModelImplCopyWithImpl<_$AdSpaceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdSpaceModelImplToJson(
      this,
    );
  }
}

abstract class _AdSpaceModel implements AdSpaceModel {
  factory _AdSpaceModel(
      {final String adSpace,
      final String language,
      final String image,
      final String webImage,
      final String status}) = _$AdSpaceModelImpl;

  factory _AdSpaceModel.fromJson(Map<String, dynamic> json) =
      _$AdSpaceModelImpl.fromJson;

  @override
  String get adSpace;
  @override
  String get language;
  @override
  String get image;
  @override
  String get webImage;
  @override
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$AdSpaceModelImplCopyWith<_$AdSpaceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
