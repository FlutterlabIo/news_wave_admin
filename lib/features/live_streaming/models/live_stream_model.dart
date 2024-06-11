
import 'package:freezed_annotation/freezed_annotation.dart';
part 'live_stream_model.freezed.dart';
part 'live_stream_model.g.dart';
@freezed

class LiveStreamModel with _$LiveStreamModel{
  factory LiveStreamModel({
    @Default(1) int id,
    @Default('') String image,
    @Default('') String title,
    @Default('') String type,
    @Default('') String url,
    @Default('') String language,
    @Default('') String metaKey,
    @Default('') String schemaMarkUp,
    @Default('') String metaTitle,
    @Default('') String metaDes,
  }) = _LiveStreamModel;
  factory LiveStreamModel.fromJson(Map<String, dynamic>json) => _$LiveStreamModelFromJson(json);
}

