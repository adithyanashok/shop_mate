import 'package:freezed_annotation/freezed_annotation.dart';
part 'earnings_model.freezed.dart';
part 'earnings_model.g.dart';
@freezed
class EarningsModel with _$EarningsModel{
  const factory EarningsModel({
    required double earnings,
  }) = _EarningsModel;

  factory EarningsModel.fromJson(Map<String, dynamic> json) => _$EarningsModelFromJson(json);
}