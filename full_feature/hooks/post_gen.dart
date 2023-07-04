import 'package:mason/mason.dart';

void run(HookContext context) {
  await Process.run('melos get', []);
  await Process.run('melos generate', []);
}
