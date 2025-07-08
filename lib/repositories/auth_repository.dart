import '../../data/models/login_request.dart';
import '../../data/models/login_response.dart';
import '../../data/services/auth_service.dart';

class AuthRepository {
  final AuthService authService;

  AuthRepository(this.authService);

  Future<LoginResponse> login(LoginRequest request) {
    return authService.login(request);
  }
}
