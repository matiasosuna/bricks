import 'package:bloc/bloc.dart';
import 'package:{{feature_name.snakeCase()}}/src/domain/entities/form_data.dart';

class FormCubit extends Cubit<FormData> {
  FormCubitCubit() : super(const FormData());
}