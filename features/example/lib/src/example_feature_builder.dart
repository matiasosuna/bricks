import 'package:flutter/material.dart';
import 'package:example/src/data/repositories/mock_autos_repository.dart';
import 'package:example/src/presentation/bloc/auto_cubit.dart';
import 'package:example/src/presentation/pages/auto_page.dart';

class ExampleFeatureBuilder {
  Widget build() {
    return AutoPage(
      bloc: AutoCubit(MockAutosRepository()),
    );
  }
}
