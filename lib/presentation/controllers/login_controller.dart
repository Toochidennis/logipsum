import 'package:get/get.dart';
import 'package:logoipsum/core/utils/validators.dart';
import '../../repositories/auth_repository.dart';
import '../../data/models/login_request.dart';
import '../../data/models/login_response.dart';

class LoginController extends GetxController {
  final AuthRepository authRepository;

  LoginController(this.authRepository);
1
  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;
  var isRememberMe = false.obs;

  Future<void> login() async {
    isLoading.value = true;
    try {
      final response = await authRepository.login(
        LoginRequest(email: email.value, password: password.value),
      );
      Get.snackbar('Success', 'Token: ${response.token}');
    } catch (e) {
      Get.snackbar('Error', e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}

