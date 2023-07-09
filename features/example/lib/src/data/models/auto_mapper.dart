import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auto_mapper.freezed.dart';

part 'auto_mapper.g.dart';

@freezed
abstract class AutoModel with _$AutoModel {
  const factory AutoModel({
    @JsonKey(name: 'key') required String name,
  }) = _AutoModel;

  factory AutoModel.fromJson(Map<String, dynamic> json) =>
      _$AutoModelFromJson(json);
}
