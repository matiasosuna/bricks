import 'package:flutter/material.dart';
import 'package:{{feature_name.snakeCase()}}/src/data/repositories/mock_{{repository_name.snakeCase()}}_repository.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/pages/{{page_name.snakeCase()}}_page.dart';

{{#include_fetch_method}}
import 'package:test/src/presentation/bloc/by_id/{{entity_name.snakeCase()}}_cubit.dart';
{{/include_fetch_method}}

{{#include_fetch_list_method}}
import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/list/{{entity_name.snakeCase()}}_list_cubit.dart';
{{/include_fetch_list_method}}

{{#include_update_method}}
import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/submit/submit_cubit.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/form/form_cubit.dart';
{{/include_update_method}}

class {{feature_name.pascalCase()}}FeatureBuilder {
  Widget build() {
    final repository = Mock{{repository_name.pascalCase()}}Repository();
    return {{page_name.pascalCase()}}Page(
{{#include_update_method}}
      formCubit: FormCubit(),
      submitCubit: SubmitCubit(repository),
{{/include_update_method}}
{{#include_fetch_method}}
      byIdCubit: {{entity_name.pascalCase()}}Cubit(repository),
{{/include_fetch_method}}
{{#include_fetch_list_method}}
      listCubit: {{entity_name.pascalCase()}}ListCubit(repository),
{{/include_fetch_list_method}}
    );
  }
}
