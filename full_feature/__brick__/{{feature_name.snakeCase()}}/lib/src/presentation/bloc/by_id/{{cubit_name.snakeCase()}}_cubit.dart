import 'package:bloc/bloc.dart';

import '{{cubit_name.snakeCase()}}_state.dart';
export '{{cubit_name.snakeCase()}}_state.dart';

class {{cubit_name.pascalCase()}}Cubit extends Cubit<{{cubit_name.pascalCase()}}State> {
  {{cubit_name.pascalCase()}}Cubit(this.repository) : super(const {{cubit_name.pascalCase()}}State.loading());

  final {{repository_name.pascalCase()}}Repository repository;

  Future<void> fetch(String id) async {
    emit(const {{cubit_name.pascalCase()}}State.loading(id));
    final result = await repository.fetchById();
    result.fold(
      (failure) => emit({{cubit_name.pascalCase()}}State.fail(failure)),
      (data) => emit({{cubit_name.pascalCase()}}State.success(data)),
    );
  }
}
