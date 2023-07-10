{{#is_by_id}}
import 'package:bloc/bloc.dart';

import '{{entity_name.snakeCase()}}_state.dart';
export '{{entity_name.snakeCase()}}_state.dart';

class {{entity_name.pascalCase()}}Cubit extends Cubit<{{entity_name.pascalCase()}}State> {
  {{entity_name.pascalCase()}}Cubit(this.repository) : super(const {{entity_name.pascalCase()}}State.loading());

  final {{repository_name.pascalCase()}}Repository repository;

  Future<void> fetch(String id) async {
    emit(const {{entity_name.pascalCase()}}State.loading());
    final result = await repository.fetchById(id);
    result.fold(
      (failure) => emit({{entity_name.pascalCase()}}State.fail(failure)),
      (data) => emit({{entity_name.pascalCase()}}State.success(data)),
    );
  }
}

{{/is_by_id}}

{{#is_list}}
import 'package:bloc/bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}_repository.dart';

import '{{entity_name.snakeCase()}}_list_state.dart';
export '{{entity_name.snakeCase()}}_list_state.dart';

class {{entity_name.pascalCase()}}ListCubit extends Cubit<{{entity_name.pascalCase()}}ListState> {
  {{entity_name.pascalCase()}}ListCubit(this.repository) : super(const {{entity_name.pascalCase()}}ListState.loading());

  final {{repository_name.pascalCase()}}Repository repository;

  Future<void> fetch() async {
    emit(const {{entity_name.pascalCase()}}ListState.loading());
    final result = await repository.fetchList();
    result.fold(
      (failure) => emit({{entity_name.pascalCase()}}ListState.fail(failure)),
      (data) => emit({{entity_name.pascalCase()}}ListState.success(data)),
    );
  }
}
{{/is_list}}

{{#is_submit}}
import 'package:bloc/bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}_repository.dart';

import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/submit/submit_state.dart';

export 'submit_state.dart';

class SubmitCubit extends Cubit<SubmitState> {
  SubmitCubit(this.repository) : super(const SubmitState.loading());

  final {{repository_name.pascalCase()}}Repository repository;

  Future<void> fetch({{submit_entity_name.pascalCase()}} {{submit_entity_name.camelCase()}}) async {
    emit(const SubmitState.loading());
    final result = await repository.submit({{submit_entity_name.camelCase()}});
    result.fold(
      () => emit(SubmitState.success()),
      (failure) => emit(SubmitState.fail(failure)),
    );
  }
}
{{/is_submit}}

