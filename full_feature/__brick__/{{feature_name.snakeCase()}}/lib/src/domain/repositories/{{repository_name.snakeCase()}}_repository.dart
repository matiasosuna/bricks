import 'package:dartz/dartz.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';

abstract class {{repository_name.pascalCase()}}Repository {

{{#include_fetch_method}}
  Future<Either<{{repository_name.pascalCase()}}Failure, {{entity_name.pascalCase()}}>> fetchById(String id);
{{/include_fetch_method}}

{{#include_fetch_list_method}}
  Future<Either<{{repository_name.pascalCase()}}Failure, List<{{entity_name.pascalCase()}}>>> fetchList();
{{/include_fetch_list_method}}

{{#include_update_method}}
  Future<Option<{{repository_name.pascalCase()}}Failure>> submit({{update_entity.pascalCase()}} {{update_entity.camelCase()}});
{{/include_update_method}}
}
