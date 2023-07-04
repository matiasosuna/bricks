import 'package:mason/mason.dart';

void run(HookContext context) {
  final result = await Process.run('melos get', []);
  final result = await Process.run('melos generate', []);
}
