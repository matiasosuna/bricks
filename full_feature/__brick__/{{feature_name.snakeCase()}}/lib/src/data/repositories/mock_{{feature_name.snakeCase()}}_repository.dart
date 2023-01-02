import 'package:dartz/dartz.dart';
import 'package:{{feature_name.snakeCase()}}/src/data/mappers/{{feature_name.snakeCase()}}_mapper.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{feature_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{feature_name.snakeCase()}}_failure.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{feature_name.snakeCase()}}_repository.dart';

class Mock{{feature_name.pascalCase()}}Repository implements {{feature_name.pascalCase()}}Repository {
  @override
  Future<Either<{{feature_name.pascalCase()}}Failure, {{feature_name.pascalCase()}}>> fetch() async {
    try {
      final {{feature_name.camelCase()}} = {{feature_name.pascalCase()}}Mapper.fromJson({});
      return Right({{feature_name.camelCase()}});
    } catch (e) {
      return Left({{feature_name.pascalCase()}}Failure(e.toString()));
    }
  }
}
