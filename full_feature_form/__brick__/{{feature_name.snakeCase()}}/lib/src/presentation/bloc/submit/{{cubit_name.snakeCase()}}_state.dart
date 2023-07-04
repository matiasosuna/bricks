import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';

part '{{cubit_name.snakeCase()}}_state.freezed.dart';

@freezed
class {{cubit_name.pascalCase()}}State with _${{cubit_name.pascalCase()}}State {
  const factory {{cubit_name.pascalCase()}}State.loading() = Loading{{cubit_name.pascalCase()}}State;

  const factory {{cubit_name.pascalCase()}}State.success() = Success{{cubit_name.pascalCase()}}State;

  const factory {{cubit_name.pascalCase()}}State.fail({{repository_name.pascalCase()}}Failure failure) = Fail{{cubit_name.pascalCase()}}State;
}
