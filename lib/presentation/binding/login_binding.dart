import 'package:get/get.dart';
import '../controllers/login_controller.dart';
import '../../repositories/auth_repository.dart';
import '../../data/services/auth_service.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AuthService());
    Get.lazyPut(() => AuthRepository(Get.find<AuthService>()));
    Get.lazyPut(() => LoginController(Get.find<AuthRepository>()));
  }
}
