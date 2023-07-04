import 'package:mason/mason.dart';
import 'dart:io';

Future<void> run(HookContext context) async {
  await Process.run('melos get', []);
  await Process.run('melos generate', []);
}
