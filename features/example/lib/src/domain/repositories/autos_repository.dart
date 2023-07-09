import 'package:dartz/dartz.dart';
import 'package:example/src/domain/failures/autos_failure.dart';
import 'package:example/src/domain/entities/auto.dart';

abstract class AutosRepository {


  Future<Either<AutosFailure, Auto>> fetchById(String id);



  Future<Either<AutosFailure, List<Auto>>> fetchList();



  Future<Option<AutosFailure>> update(AutoData autoData);

}
