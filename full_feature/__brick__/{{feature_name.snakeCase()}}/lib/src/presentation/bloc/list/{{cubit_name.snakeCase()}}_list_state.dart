import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';

part '{{entity_name.snakeCase()}}_list_state.freezed.dart';

@freezed
class {{entity_name.pascalCase()}}ListState with _${{entity_name.pascalCase()}}ListState {
  const factory {{entity_name.pascalCase()}}ListState.loading() = Loading{{entity_name.pascalCase()}}ListState;

  const factory {{entity_name.pascalCase()}}ListState.success({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) = Success{{entity_name.pascalCase()}}ListState;

  const factory {{entity_name.pascalCase()}}ListState.fail({{repository_name.pascalCase()}}Failure failure) = Fail{{entity_name.pascalCase()}}ListState;
}
