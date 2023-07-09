{{#include_fetch_method}}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';

part '{{entity_name.snakeCase()}}_state.freezed.dart';

@freezed
class {{entity_name.pascalCase()}}State with _${{entity_name.pascalCase()}}State {
  const factory {{entity_name.pascalCase()}}State.loading() = Loading{{entity_name.pascalCase()}}State;

  const factory {{entity_name.pascalCase()}}State.success({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) = Success{{entity_name.pascalCase()}}State;

  const factory {{entity_name.pascalCase()}}State.fail({{repository_name.pascalCase()}}Failure failure) = Fail{{entity_name.pascalCase()}}State;
}
{{/include_fetch_method}}

{{^include_fetch_method}}
remove file
{{/include_fetch_method}}