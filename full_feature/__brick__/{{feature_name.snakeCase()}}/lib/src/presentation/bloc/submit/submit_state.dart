{{#include_update_method}}
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';

part 'submit_state.freezed.dart';

@freezed
class SubmitState with _$SubmitState {
  const factory SubmitState.loading() = LoadingSubmitState;

  const factory SubmitState.success() = SuccessSubmitState;

  const factory SubmitState.fail({{repository_name.pascalCase()}}Failure failure) = FailSubmitState;
}
{{/include_update_method}}
{{^include_update_method}}
remove file
{{/include_update_method}}