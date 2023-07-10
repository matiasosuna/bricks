import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';

part '{{entity_name.snakeCase()}}_state.freezed.dart';

@freezed
class {{entity_name.pascalCase()}}State with _${{entity_name.pascalCase()}}State {
  const factory {{entity_name.pascalCase()}}State.loading() = Loading{{entity_name.pascalCase()}}State;

{{#is_by_id}}
const factory {{entity_name.pascalCase()}}State.success({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) = Success{{entity_name.pascalCase()}}State;
{{/is_by_id}}
{{#is_list}}
const factory {{entity_name.pascalCase()}}State.success(List<{{entity_name.pascalCase()}}> list) = Success{{entity_name.pascalCase()}}State;
{{/is_list}}
{{#is_submit}}
const factory {{entity_name.pascalCase()}}State.success( = Success{{entity_name.pascalCase()}}State;
{{/is_submit}}

  const factory {{entity_name.pascalCase()}}State.fail({{repository_name.pascalCase()}}Failure failure) = Fail{{entity_name.pascalCase()}}State;
}
