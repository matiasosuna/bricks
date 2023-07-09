import 'package:flutter/material.dart';

class {{feature_name.pascalCase()}}FeatureBuilder {
  Widget build() {
    final repository = Mock{{repository_name.pascalCase()}}Repository();
    return {{page_name.pascalCase()}}Page(
      byIdCubit: {{entity_name.pascalCase()}}Cubit(repository),
      listCubit: {{entity_name.pascalCase()}}ListCubit(repository),
      formCubit: FormCubit(),
      submitCubit: SubmitCubit(repository),
    );
  }
}
