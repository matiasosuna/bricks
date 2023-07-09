import 'package:dartz/dartz.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/repositories/{{repository_name.snakeCase()}}.dart';

class Mock{{repository_name.pascalCase()}}Repository implements {{repository_name.pascalCase()}}Repository {

{{#is_return_type_list}}
  @override{}
  Future<Either<{{repository_name.pascalCase()}}Failure, List<{{right_type.pascalCase()}}>>> {{method_name}}() async {
    return Right([{{right_type.pascalCase()}}()]);
  }
{{/is_return_type_list}}

{{^is_return_type_list}}
  @override{}
  Future<Either<{{repository_name.pascalCase()}}Failure, {{right_type.pascalCase()}}>> {{method_name}}() async {
    return Right({{right_type.pascalCase()}}());
  }
{{/is_return_type_list}}
}