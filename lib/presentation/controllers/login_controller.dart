import 'package:dio/dio.dart';
import 'package:get/get.dart';
import '../../repositories/auth_repository.dart';
import '../../data/models/login_request.dart';

class LoginController extends GetxController {
  final AuthRepository authRepository;

  LoginController(this.authRepository);

  var email = ''.obs;
  var password = ''.obs;
  var isLoading = false.obs;
  var isRememberMe = false.obs;
  final isPasswordObscured = true.obs;

  Future<void> login() async {
    isLoading.value = true;
    try {
      final response = await authRepository.login(
        LoginRequest(email: email.value, password: password.value),
      );
      Get.snackbar('Success', 'Token: ${response.token}');
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        Get.snackbar('Error', e.response?.data['detail']);
      } else {
        final message = e.response?.data?["message"] ?? "Something went wrong.";
        Get.snackbar('Error', message);
      }
    } catch (e) {
      Get.snackbar('Error', 'Unexpected error: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
