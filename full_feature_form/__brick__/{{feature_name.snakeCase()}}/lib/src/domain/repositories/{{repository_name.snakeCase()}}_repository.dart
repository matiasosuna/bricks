import 'package:dartz/dartz.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';

abstract class {{repository_name.pascalCase()}}Repository {
  Future<Option<{{repository_name.pascalCase()}}Failure>> upload({{entity_name.pascalCase()}} {{entity_name.camelCase()}}) {{repository_method_name.snakeCase()}};
}
