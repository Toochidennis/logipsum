import '../../core/network/api_client.dart';
import '../../core/network/api_routes.dart';
import '../models/login_request.dart';
import '../models/login_response.dart';

class AuthService {
  final ApiClient _client = ApiClient();

  Future<LoginResponse> login(LoginRequest request) async {
    final data = await _client.post(
      ApiRoutes.login,
      data: request.toJson(),
    );
    return LoginResponse.fromJson(data);
  }
}
