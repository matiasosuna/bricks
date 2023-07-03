import 'package:bloc/bloc.dart';
import 'package:{{repository_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}_repository.dart';

import '{{cubit_name.snakeCase()}}_state.dart';

export '{{cubit_name.snakeCase()}}_state.dart';

class {{cubit_name.pascalCase()}}Cubit extends Cubit<{{cubit_name.pascalCase()}}State> {
  {{cubit_name.pascalCase()}}Cubit(this.repository) : super(const {{cubit_name.pascalCase()}}State.loading());

  final {{repository_name.pascalCase()}}Repository repository;

  Future<void> fetch() async {
    emit(const {{cubit_name.pascalCase()}}State.loading());
    final result = await repository.fetch();
    result.fold(
      (failure) => emit({{cubit_name.pascalCase()}}State.fail(failure)),
      (data) => emit({{cubit_name.pascalCase()}}State.success(data)),
    );
  }
}
