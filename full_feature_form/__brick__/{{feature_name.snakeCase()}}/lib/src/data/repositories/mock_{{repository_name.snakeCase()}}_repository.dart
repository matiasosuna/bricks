import 'package:dartz/dartz.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}_repository.dart';

class Mock{{repository_name.pascalCase()}}Repository implements {{repository_name.pascalCase()}}Repository {
  @override
  Future<Option<{{repository_name.pascalCase()}}Failure>> {{repository_method_name.snakeCase()}}({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) async {
    try {
      return const None();
    } catch (e) {
      return Some({{repository_name.pascalCase()}}Failure(e.toString()));
    }
  }
}
