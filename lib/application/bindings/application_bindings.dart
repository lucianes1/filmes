import 'package:filmes/application/auth/auth_service.dart';
import 'package:filmes/application/rest_client/rest_client.dart';
import 'package:filmes/repositories/login/login_repository.dart';
import 'package:filmes/repositories/login/login_repository_impl.dart';
import 'package:filmes/services/login/login_service.dart';
import 'package:filmes/services/login/login_service_impl.dart';
import 'package:get/get.dart';

class ApplicationBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RestClient());
    Get.lazyPut<LoginRepository>(() => LoginRepositoryImpl(), fenix: true);
    Get.lazyPut<LoginService>(
        () => LoginServiceImpl(loginRepository: Get.find()),
        fenix: true);
    Get.put(AuthService()).init();
  }
}
