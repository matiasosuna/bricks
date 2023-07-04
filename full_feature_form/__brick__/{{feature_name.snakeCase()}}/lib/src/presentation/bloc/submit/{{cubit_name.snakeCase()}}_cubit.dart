import 'package:bloc/bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}_repository.dart';

import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/{{cubit_name.snakeCase()}}_state.dart';

export '{{cubit_name.snakeCase()}}_state.dart';

class {{cubit_name.pascalCase()}}Cubit extends Cubit<{{cubit_name.pascalCase()}}State> {
  {{cubit_name.pascalCase()}}Cubit(this.repository) : super(const {{cubit_name.pascalCase()}}State.loading());

  final {{repository_name.pascalCase()}}Repository repository;

  Future<void> fetch() async {
    emit(const {{cubit_name.pascalCase()}}State.loading());
    final result = await repository.{{repository_method_name.snakeCase()}();
    result.fold(
      (failure) => emit({{cubit_name.pascalCase()}}State.fail(failure)),
      () => emit({{cubit_name.pascalCase()}}State.success()),
    );
  }
}
