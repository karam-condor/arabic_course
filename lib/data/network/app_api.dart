import 'package:arabic_app/app/constants.dart';
import 'package:arabic_app/data/response/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customer/login")
  Future<AuthenticationResponse> login(
      @Field("email") String email, @Field("password") String password);
}
