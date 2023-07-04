import 'package:mason/mason.dart';
import 'dart:io';

void run(HookContext context) async {
  await Process.run('melos get', []);
  await Process.run('melos generate', []);
}
