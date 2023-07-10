import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{entity_name.snakeCase()}}_mapper.freezed.dart';

part '{{entity_name.snakeCase()}}_mapper.g.dart';

@freezed
abstract class {{entity_name.pascalCase()}}Model with _${{entity_name.pascalCase()}}Model {
  const factory {{entity_name.pascalCase()}}Model({
    @JsonKey(name: 'key') required String name,
  }) = _{{entity_name.pascalCase()}}Model;

  factory {{entity_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{entity_name.pascalCase()}}ModelFromJson(json);
}
