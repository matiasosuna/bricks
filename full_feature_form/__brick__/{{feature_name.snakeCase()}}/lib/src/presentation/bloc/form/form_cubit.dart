import 'package:bloc/bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{entity_name.snakeCase()}}.dart';

class FormCubit extends Cubit<{{entity_name.pascalCase()}}> {
  FormCubit() : super({{entity_name.pascalCase()}}());
}