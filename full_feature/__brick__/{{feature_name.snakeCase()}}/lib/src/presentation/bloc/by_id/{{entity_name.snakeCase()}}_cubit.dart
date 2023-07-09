{{#include_fetch_method}}
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

{{/include_fetch_method}}

{{^include_fetch_method}}
remove file
{{/include_fetch_method}}
