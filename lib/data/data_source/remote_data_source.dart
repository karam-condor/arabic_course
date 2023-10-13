import 'package:arabic_app/data/network/app_api.dart';
import 'package:arabic_app/data/network/requests.dart';
import 'package:arabic_app/data/response/responses.dart';

abstract class RemoteDataSource {
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
}

class RemoteDataSourceImp implements RemoteDataSource {
  final AppServiceClient _appServiceClient;

  RemoteDataSourceImp(this._appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) async {
    return _appServiceClient.login(loginRequest.email, loginRequest.password);
  }
}
