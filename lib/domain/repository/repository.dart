import 'package:arabic_app/data/network/failure.dart';
import 'package:arabic_app/data/network/requests.dart';
import 'package:arabic_app/domain/model/models.dart';
import 'package:dartz/dartz.dart';

abstract class Repository {
  //Use Either here because we don't know if the api will response with success the right part is the success part
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
}
