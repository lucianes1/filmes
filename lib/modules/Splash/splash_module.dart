import 'package:filmes/application/modules/module.dart';
import 'package:filmes/modules/Splash/splash_page.dart';
import 'package:filmes/modules/splash/splash_bindings.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule implements Module {
  @override
  List<GetPage> routers = [
    GetPage(name: '/', page: () => SplashPage(), binding: SplashBindings())
  ];
}
