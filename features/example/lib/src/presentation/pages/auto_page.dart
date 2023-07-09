import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:example/src/presentation/bloc/auto_cubit.dart';

class AutoPage extends StatelessWidget {
  const AutoPage({super.key, required this.bloc});

  final AutoCubit bloc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AutoCubit, AutoState>(
        bloc: bloc,
        builder: (context, state) {
          return state.when(
            loading: () => const Center(child: CircularProgressIndicator.adaptive()),
            success: (data) => const Text('Success'),
            fail: (failure) => Text(failure.message),
          );
        },
      ),
    );
  }
}
