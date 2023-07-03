import 'package:dartz/dartz.dart';
import 'package:{{feature_name.snakeCase()}}/src/data/mappers/{{entity_name.snakeCase()}}_mapper.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}_repository.dart';

class Mock{{repository_name.pascalCase()}}Repository implements {{repository_name.pascalCase()}}Repository {
  @override
  Future<Either<{{repository_name.pascalCase()}}Failure, {{entity_name.pascalCase()}}>> fetch() async {
    try {
      final {{entity_name.camelCase()}} = {{entity_name.pascalCase()}}Mapper.fromJson({});
      return Right({{entity_name.camelCase()}});
    } catch (e) {
      return Left({{repository_name.pascalCase()}}Failure(e.toString()));
    }
  }
}
