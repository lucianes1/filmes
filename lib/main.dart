import 'package:filmes/application/bindings/application_bindings.dart';
import 'package:filmes/application/ui/filmes_app_ui_config.dart';
import 'package:filmes/modules/Splash/splash_module.dart';
import 'package:filmes/modules/home/home_module.dart';
import 'package:filmes/modules/login/login_module.dart';
import 'package:filmes/modules/movie_detail/movie_detail_module.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/route_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  RemoteConfig.instance.fetchAndActivate();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: FilmesAppUiConfig.title,
      initialBinding: ApplicationBindings(),
      theme: FilmesAppUiConfig.theme,
      getPages: [
        ...SplashModule().routers,
        ...LoginModule().routers,
        ...HomeModule().routers,
        ...MovieDetailModule().routers,
      ],
    );
  }
}
