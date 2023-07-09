import 'package:dartz/dartz.dart';

abstract class {{repository_name.pascalCase()}}Repository {
{{#is_return_type_list}}
  @override{}
  Future<Either<{{repository_name.pascalCase()}}Failure, List<{{right_type.pascalCase()}}>>> {{method_name}}();
{{/is_return_type_list}}

{{^is_return_type_list}}
  @override{}
  Future<Either<{{repository_name.pascalCase()}}Failure, {{right_type.pascalCase()}}>> {{method_name}}();
{{/is_return_type_list}};
}

class {{repository_name.pascalCase()}}Failure {
  const {{repository_name.pascalCase()}}Failure(this.message);

  final String message;
}
