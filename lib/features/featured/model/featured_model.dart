
import 'package:freezed_annotation/freezed_annotation.dart';
part 'featured_model.freezed.dart';
part 'featured_model.g.dart';
@freezed
class FeaturedModel with _$FeaturedModel{
  factory FeaturedModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String slug,
    @Default('') String nerwsType,
    @Default('') String videoType,
    @Default('') String filterType,
    @Default('') String appStyle,
    @Default('') String webStyle,
    @Default('') String language,
    @Default('') String status,
    @Default('') String order,
  }) = _FeaturedModel;

  factory FeaturedModel.fromJson(Map<String, dynamic>json) => _$FeaturedModelFromJson(json);
}
