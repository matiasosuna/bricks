import 'package:flutter/material.dart';

class {{feature_name.pascalCase()}}FeatureBuilder {
  Widget build() {
    final repository = Mock{{repository_name.pascalCase()}}Repository();
    return {{page_name.pascalCase()}}Page(
      byIdCubit: {{cubit_name.pascalCase()}}Cubit(repository),
      listCubit: {{cubit_name.pascalCase()}}ListCubit(repository),
      formCubit: FormCubit(),
      submitCubit: SubmitCubit(repository),
    );
  }
}
