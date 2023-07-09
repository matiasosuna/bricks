import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class {{page_name.pascalCase()}}Page extends StatelessWidget {
  const {{page_name.pascalCase()}}Page({super.key,
    required this.byIdCubit,
    required this.listCubit,
    required this.formCubit,
    required this.submitCubit,
  });

  final {{cubit_name.pascalCase()}}Cubit byIdCubit;
  final {{cubit_name.pascalCase()}}ListCubit listCubit;
  final FormCubit formCubit;
  final SubmitCubit submitCubit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('page'),
    );
  }
}
