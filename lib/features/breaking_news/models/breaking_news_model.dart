
import 'package:freezed_annotation/freezed_annotation.dart';
part 'breaking_news_model.freezed.dart';
part 'breaking_news_model.g.dart';
@freezed

class BreakingNewsModel with _$BreakingNewsModel{
  factory BreakingNewsModel({
    @Default(1) int id,
    @Default('') String newsTitle,
    @Default('') String slug,
    @Default('') String contentType,
    @Default('') String description,
    @Default('') String language,
    @Default('') String views,
    @Default('') String metaKeyword,
    @Default('') String newsPhotoUrl,
  }) = _BreakingNewsModel;
  factory BreakingNewsModel.fromJson(Map<String, dynamic>json) => _$BreakingNewsModelFromJson(json);
}

