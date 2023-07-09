import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:example/src/domain/entities/auto.dart';
import 'package:example/src/domain/failures/autos_failure.dart';

part 'auto_state.freezed.dart';

@freezed
class AutoState with _$AutoState {
  const factory AutoState.loading() = LoadingAutoState;

  const factory AutoState.success(Auto auto) = SuccessAutoState;

  const factory AutoState.fail(AutosFailure failure) = FailAutoState;
}
