import 'package:flutter/material.dart';
import 'package:{{feature_name.snakeCase()}}/src/data/repositories/mock_{{repository_name.snakeCase()}}_repository.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/submit/{{cubit_name.snakeCase()}}_cubit.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/pages/{{page_name.snakeCase()}}_page.dart';

class {{feature_name.pascalCase()}}FeatureBuilder {
  Widget build() {
    return {{page_name.pascalCase()}}Page(
      bloc: {{cubit_name.pascalCase()}}Cubit(Mock{{repository_name.pascalCase()}}Repository()),
    );
  }
}
