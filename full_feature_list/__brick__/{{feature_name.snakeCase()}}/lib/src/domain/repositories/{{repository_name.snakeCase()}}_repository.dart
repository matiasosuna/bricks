import 'package:dartz/dartz.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';

abstract class {{repository_name.pascalCase()}}Repository {
  Future<Either<{{repository_name.pascalCase()}}Failure, List<{{entity_name.pascalCase()}}>>> fetch();
}
