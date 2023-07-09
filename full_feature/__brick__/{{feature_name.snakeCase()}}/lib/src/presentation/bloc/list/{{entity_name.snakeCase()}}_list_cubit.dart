{{#include_fetch_list_method}}
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
{{/include_fetch_list_method}}
{{^include_fetch_list_method}}
remove file
{{/include_fetch_list_method}}