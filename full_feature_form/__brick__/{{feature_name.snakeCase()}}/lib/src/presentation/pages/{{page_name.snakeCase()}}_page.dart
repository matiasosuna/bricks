import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/submit/{{cubit_name.snakeCase()}}_cubit.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/form/form_cubit.dart';

class {{page_name.pascalCase()}}Page extends StatelessWidget {
  const {{page_name.pascalCase()}}Page({super.key, required this.bloc, required this.formCubit});

  final {{cubit_name.pascalCase()}}Cubit bloc;
  final FormCubit formCubit;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{cubit_name.pascalCase()}}Cubit, {{cubit_name.pascalCase()}}State>(
      bloc: bloc,
      builder: (context, state) {
        return state.when(
          loading: () => const Center(child: CircularProgressIndicator.adaptive()),
          success: (data) => const Text('Success'),
          fail: (failure) => Text(failure.message),
        );
      },
    );
  }
}
