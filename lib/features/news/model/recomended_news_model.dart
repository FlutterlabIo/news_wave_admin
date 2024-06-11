
import 'package:freezed_annotation/freezed_annotation.dart';
part 'recomended_news_model.freezed.dart';
part 'recomended_news_model.g.dart';
@freezed

class RecomendedNewsModel with _$RecomendedNewsModel{
  factory RecomendedNewsModel({
    @Default('') String createdAt,
    @Default(1) int id,
    @Default('') String newsTitle,
    @Default('') String language,
    @Default('') String contentType,
    @Default('') String categoryName,
    @Default('') String status,
    @Default('') String isExpired,
    @Default('') String newsDes,
    @Default('') String newsPhotoUrl,
  }) = _RecomendedNewsModel;
  factory RecomendedNewsModel.fromJson(Map<String, dynamic>json) => _$RecomendedNewsModelFromJson(json);
}

