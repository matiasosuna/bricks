import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{page_name.pascalCase()}}Page extends StatelessWidget {
  const {{page_name.pascalCase()}}Page({super.key,
{{#include_update_method}}
    required this.submitCubit,
    required this.formCubit,
{{/include_update_method}}
{{#include_fetch_method}}
    required this.byIdCubit,
{{/include_fetch_method}}
{{#include_fetch_list_method}}
    required this.listCubit,
{{/include_fetch_list_method}}
  });

{{#include_update_method}}
  final FormCubit formCubit;
  final SubmitCubit submitCubit;
{{/include_update_method}}
{{#include_fetch_method}}
  final {{entity_name.pascalCase()}}Cubit byIdCubit;
{{/include_fetch_method}}
{{#include_fetch_list_method}}
  final {{entity_name.pascalCase()}}ListCubit listCubit;
{{/include_fetch_list_method}}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('page'),
    );
  }
}
