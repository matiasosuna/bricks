import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/presentation/bloc/{{feature_name.snakeCase()}}_cubit.dart';

class {{feature_name.pascalCase()}}Page extends StatelessWidget {
  const {{feature_name.pascalCase()}}Page({super.key, required this.bloc});

  final {{feature_name.pascalCase()}}Cubit bloc;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<{{feature_name.pascalCase()}}Cubit, {{feature_name.pascalCase()}}State>(
      bloc: bloc,
      builder: (context, state) {
        return state.when(
          loading: () => const Center(
            child: CircularProgressIndicator.adaptive(),
          ),
          success: (data) => const Text('Success'),
          fail: (failure) => Text(failure.message),
        );
      },
    );
  }
}
