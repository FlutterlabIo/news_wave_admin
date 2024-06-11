
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ad_space_model.freezed.dart';
part 'ad_space_model.g.dart';

@freezed

class AdSpaceModel with _$AdSpaceModel{
  factory AdSpaceModel({
    @Default('') String adSpace,
    @Default('') String language,
    @Default('') String image,
    @Default('') String webImage,
    @Default('') String status,
  }) = _AdSpaceModel;
  factory AdSpaceModel.fromJson(Map<String, dynamic>json) => _$AdSpaceModelFromJson(json);
}

