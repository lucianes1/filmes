import 'package:filmes/application/modules/module.dart';
import 'package:filmes/modules/Splash/splash_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';

class SplashModule extends Module {
  @override
  List<GetPage> routers = [GetPage(name: '/', page: () => SplashPage())];
}
