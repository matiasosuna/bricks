import 'package:dartz/dartz.dart';
import 'package:commons/commons.dart';
import 'dart:async';

import 'package:{{feature_name.snakeCase()}}/src/data/models/{{entity_name.snakeCase()}}_mapper.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/failures/{{repository_name.snakeCase()}}_failure.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}_repository.dart';

class Remote{{repository_name.pascalCase()}}Repository implements {{repository_name.pascalCase()}}Repository {

  final HttpHelper httpHelper;

  static const String

{{#include_fetch_method}}
fetchPath = '/fetch-path';
{{/include_fetch_method}}

{{#include_fetch_list_method}}
fetchListPath = '/list-path';
{{/include_fetch_list_method}}

{{#include_update_method}}
subimtPath = '/submit-path';
{{/include_update_method}}

{{#include_fetch_method}}
  @override
  Future<Either<{{repository_name.pascalCase()}}Failure, {{entity_name.pascalCase()}}>> fetchById(String id) async {
    try {
      final result = await httpHelper.get(path);
      return result.fold(
          (fail) => Left({{repository_name.pascalCase()}}Failure(fail.message)),
          (response) {
            final model = {{entity_name.pascalCase()}}Model.fromJson(response.data);
            return Right(model.toEntity);
          },
      );
    } catch (e) {
      log('$e');
      return Left({{repository_name.pascalCase()}}Failure(e.toString()));
    }
  }
{{/include_fetch_method}}

{{#include_fetch_list_method}}
  @override
  Future<Either<{{repository_name.pascalCase()}}Failure, List<{{entity_name.pascalCase()}}>>> fetchList() async {
    try {
      final result = await httpHelper.get(path);
      return result.fold(
        (fail) => Left({{repository_name.pascalCase()}}Failure(fail.message)),
        (response) {
          final data = response.data as List<Map<String, dynamic>>;
          final list = data.map((e) => {{entity_name.pascalCase()}}Model.fromJson(e).toEntity).toList();
          return Right(list);
        },
      );
    } catch (e) {
      log('$e');
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
