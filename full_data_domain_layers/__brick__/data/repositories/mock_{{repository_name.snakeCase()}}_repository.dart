import 'package:dartz/dartz.dart';
import 'package:{{feature_name.snakeCase()}}/src/data/models/{{entity_name.snakeCase()}}_mapper.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}_repository.dart';

class Mock{{repository_name.pascalCase()}}Repository implements {{repository_name.pascalCase()}}Repository {

{{#include_fetch_method}}
  @override
  Future<Either<{{repository_name.pascalCase()}}Failure, {{entity_name.pascalCase()}}>> fetchById(String id) async {
    try {
      return Right({{entity_name.pascalCase()}}());
    } catch (e) {
      return Left({{repository_name.pascalCase()}}Failure(e.toString()));
    }
  }
{{/include_fetch_method}}

{{#include_fetch_list_method}}
  @override
  Future<Either<{{repository_name.pascalCase()}}Failure, List<{{entity_name.pascalCase()}}>>> fetchList() async {
    try {
      return Right([{{entity_name.pascalCase()}}()]);
    } catch (e) {
      return Left({{repository_name.pascalCase()}}Failure(e.toString()));
    }
  }
{{/include_fetch_list_method}}

{{#include_update_method}}
  @override
  Future<Option<{{repository_name.pascalCase()}}Failure>> submit({{update_entity.pascalCase()}} {{update_entity.camelCase()}}) async {
    try {
      return const None();
    } catch (e) {
      return Some({{repository_name.pascalCase()}}Failure(e.toString()));
    }
  }
{{/include_update_method}}

}
