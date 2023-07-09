import 'package:dartz/dartz.dart';
import 'package:example/src/data/models/auto_mapper.dart';
import 'package:example/src/domain/entities/auto.dart';
import 'package:example/src/domain/failures/autos_failure.dart';
import 'package:example/src/domain/repositories/autos_repository.dart';

class MockAutosRepository implements AutosRepository {


  @override
  Future<Either<AutosFailure, Auto>> fetchById(String id) async {
    try {
      return Right(Auto)();
    } catch (e) {
      return Left(AutosFailure(e.toString()));
    }
  }



  @override
  Future<Either<AutosFailure, List<Auto>>> fetchList() async {
    try {
      return Right(Auto)();
    } catch (e) {
      return Left(AutosFailure(e.toString()));
    }
  }



  @override
  Future<Option<AutosFailure>> update(AutoData autoData) async {
    try {
      return None();
    } catch (e) {
      return Left(AutosFailure(e.toString()));
    }
  }


}
