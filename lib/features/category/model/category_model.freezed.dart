// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  String get categoryName => throw _privateConstructorUsedError;
  String get slug => throw _privateConstructorUsedError;
  String get rowOrder => throw _privateConstructorUsedError;
  String get metaKeywords => throw _privateConstructorUsedError;
  String get schemaMarkUp => throw _privateConstructorUsedError;
  String get metaDescription => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {String categoryName,
      String slug,
      String rowOrder,
      String metaKeywords,
      String schemaMarkUp,
      String metaDescription,
      int categoryId});
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? slug = null,
    Object? rowOrder = null,
    Object? metaKeywords = null,
    Object? schemaMarkUp = null,
    Object? metaDescription = null,
    Object? categoryId = null,
  }) {
    return _then(_value.copyWith(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      rowOrder: null == rowOrder
          ? _value.rowOrder
          : rowOrder // ignore: cast_nullable_to_non_nullable
              as String,
      metaKeywords: null == metaKeywords
          ? _value.metaKeywords
          : metaKeywords // ignore: cast_nullable_to_non_nullable
              as String,
      schemaMarkUp: null == schemaMarkUp
          ? _value.schemaMarkUp
          : schemaMarkUp // ignore: cast_nullable_to_non_nullable
              as String,
      metaDescription: null == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String categoryName,
      String slug,
      String rowOrder,
      String metaKeywords,
      String schemaMarkUp,
      String metaDescription,
      int categoryId});
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryName = null,
    Object? slug = null,
    Object? rowOrder = null,
    Object? metaKeywords = null,
    Object? schemaMarkUp = null,
    Object? metaDescription = null,
    Object? categoryId = null,
  }) {
    return _then(_$CategoryModelImpl(
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      slug: null == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String,
      rowOrder: null == rowOrder
          ? _value.rowOrder
          : rowOrder // ignore: cast_nullable_to_non_nullable
              as String,
      metaKeywords: null == metaKeywords
          ? _value.metaKeywords
          : metaKeywords // ignore: cast_nullable_to_non_nullable
              as String,
      schemaMarkUp: null == schemaMarkUp
          ? _value.schemaMarkUp
          : schemaMarkUp // ignore: cast_nullable_to_non_nullable
              as String,
      metaDescription: null == metaDescription
          ? _value.metaDescription
          : metaDescription // ignore: cast_nullable_to_non_nullable
              as String,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  _$CategoryModelImpl(
      {this.categoryName = '',
      this.slug = '',
      this.rowOrder = '',
      this.metaKeywords = '',
      this.schemaMarkUp = '',
      this.metaDescription = '',
      this.categoryId = 0});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @JsonKey()
  final String categoryName;
  @override
  @JsonKey()
  final String slug;
  @override
  @JsonKey()
  final String rowOrder;
  @override
  @JsonKey()
  final String metaKeywords;
  @override
  @JsonKey()
  final String schemaMarkUp;
  @override
  @JsonKey()
  final String metaDescription;
  @override
  @JsonKey()
  final int categoryId;

  @override
  String toString() {
    return 'CategoryModel(categoryName: $categoryName, slug: $slug, rowOrder: $rowOrder, metaKeywords: $metaKeywords, schemaMarkUp: $schemaMarkUp, metaDescription: $metaDescription, categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.rowOrder, rowOrder) ||
                other.rowOrder == rowOrder) &&
            (identical(other.metaKeywords, metaKeywords) ||
                other.metaKeywords == metaKeywords) &&
            (identical(other.schemaMarkUp, schemaMarkUp) ||
                other.schemaMarkUp == schemaMarkUp) &&
            (identical(other.metaDescription, metaDescription) ||
                other.metaDescription == metaDescription) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, categoryName, slug, rowOrder,
      metaKeywords, schemaMarkUp, metaDescription, categoryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  factory _CategoryModel(
      {final String categoryName,
      final String slug,
      final String rowOrder,
      final String metaKeywords,
      final String schemaMarkUp,
      final String metaDescription,
      final int categoryId}) = _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  String get categoryName;
  @override
  String get slug;
  @override
  String get rowOrder;
  @override
  String get metaKeywords;
  @override
  String get schemaMarkUp;
  @override
  String get metaDescription;
  @override
  int get categoryId;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
