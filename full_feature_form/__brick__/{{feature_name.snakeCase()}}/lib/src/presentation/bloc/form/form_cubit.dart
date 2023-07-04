import 'package:bloc/bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snake_case()}.dart';

class FormCubit extends Cubit<{{entity_name.pascalCase()}> {
  FormCubit() : super(const {{entity_name.pascalCase()}());
}