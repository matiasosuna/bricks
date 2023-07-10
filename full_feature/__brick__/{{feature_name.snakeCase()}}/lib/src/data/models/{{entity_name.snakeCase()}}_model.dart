import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{{entity_name.snakeCase()}}_model.freezed.dart';

part '{{entity_name.snakeCase()}}_model.g.dart';

@freezed
abstract class {{entity_name.pascalCase()}}Model with _${{entity_name.pascalCase()}}Model {
  const factory {{entity_name.pascalCase()}}Model({
    @JsonKey(name: 'key') required String name,
  }) = _{{entity_name.pascalCase()}}Model;

  factory {{entity_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) =>
      _${{entity_name.pascalCase()}}ModelFromJson(json);

  const {{entity_name.pascalCase()}}Model._();

  {{entity_name.pascalCase()}} get toEntity {
    return {{entity_name.pascalCase()}}();
  }
}
