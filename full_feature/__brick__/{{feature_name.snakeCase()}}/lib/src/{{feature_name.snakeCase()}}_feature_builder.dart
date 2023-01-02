import 'package:flutter/material.dart';
import 'package:{{feature_name.snakeCase()}}/src/data/repositories/mock_{{feature_name.snakeCase()}}_repository.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/{{feature_name.snakeCase()}}_cubit.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/{{feature_name.snakeCase()}}_cubit.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/pages/{{feature_name.snakeCase()}}_page.dart';

class {{feature_name.pascalCase()}}FeatureBuilder {
  Widget build() {
    return {{feature_name.pascalCase()}}Page(
      bloc: {{feature_name.pascalCase()}}Cubit(Mock{{feature_name.pascalCase()}}Repository()),
    );
  }
}
