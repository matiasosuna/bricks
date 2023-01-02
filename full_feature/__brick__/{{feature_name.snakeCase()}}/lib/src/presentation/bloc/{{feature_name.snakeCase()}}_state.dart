import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{feature_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{feature_name.snakeCase()}}_failure.dart';

part '{{feature_name.snakeCase()}}_state.freezed.dart';

@freezed
class {{feature_name.pascalCase()}}State with _${{feature_name.pascalCase()}}State {
  const factory {{feature_name.pascalCase()}}State.loading() = Loading{{feature_name.pascalCase()}}State;

  const factory {{feature_name.pascalCase()}}State.success({{feature_name.pascalCase()}} {{feature_name.camelCase()}}) = Success{{feature_name.pascalCase()}}State;

  const factory {{feature_name.pascalCase()}}State.fail({{feature_name.pascalCase()}}Failure failure) = Fail{{feature_name.pascalCase()}}State;
}
