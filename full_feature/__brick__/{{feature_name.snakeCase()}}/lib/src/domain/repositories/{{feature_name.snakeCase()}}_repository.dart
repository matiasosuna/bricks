import 'package:dartz/dartz.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{feature_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{feature_name.snakeCase()}}_failure.dart';

abstract class {{feature_name.pascalCase()}}Repository {
  Future<Either<{{feature_name.pascalCase()}}Failure, {{feature_name.pascalCase()}}>> fetch();
}
