{{#include_update_method}}
import 'package:bloc/bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/{{submit_entity_name.snakeCase()}}.dart';

class FormCubit extends Cubit<{{submit_entity_name.pascalCase()}}> {
  FormCubit() : super({{submit_entity_name.pascalCase()}}());
}
{{/include_update_method}}
{{^include_update_method}}
remove file
{{/include_update_method}}