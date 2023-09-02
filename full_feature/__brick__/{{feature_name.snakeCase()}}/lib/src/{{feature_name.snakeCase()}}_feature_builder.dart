import 'package:flutter/material.dart';

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
