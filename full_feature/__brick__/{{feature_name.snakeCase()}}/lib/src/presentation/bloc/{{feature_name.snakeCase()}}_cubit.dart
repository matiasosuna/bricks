import 'package:bloc/bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';

import '{{feature_name.snakeCase()}}_state.dart';

export '{{feature_name.snakeCase()}}_state.dart';

class {{feature_name.pascalCase()}}Cubit extends Cubit<{{feature_name.pascalCase()}}State> {
  {{feature_name.pascalCase()}}Cubit(this.repository) : super(const {{feature_name.pascalCase()}}State.loading());

  final {{feature_name.pascalCase()}}Repository repository;

  Future<void> fetch() async {
    emit(const {{feature_name.pascalCase()}}State.loading());
    final result = await repository.fetch();
    result.fold(
      (failure) => emit({{feature_name.pascalCase()}}State.fail(failure)),
      (data) => emit({{feature_name.pascalCase()}}State.success(data)),
    );
  }
}
