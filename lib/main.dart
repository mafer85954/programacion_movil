import 'package:flutter/material.dart';
import 'package:veterinaria/src/pages/inicio_sesion.dart';
import 'package:veterinaria/src/pages/lista.dart';
import 'package:veterinaria/src/pages/mvp_v1.dart';
import 'package:veterinaria/src/pages/home_header.dart';
import 'package:veterinaria/src/pages/on_boarding.dart';
import 'package:veterinaria/src/pages/principal_screen.dart';
import 'package:veterinaria/src/pages/progress_view.dart';
import 'package:veterinaria/src/pages/recuperar_contrasenia.dart';
import 'package:veterinaria/src/pages/registro.dart';
import 'package:veterinaria/src/pages/splash_view.dart';
import 'package:veterinaria/src/pages/ventana_principal.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: 'ventana2',
      //initialRoute: 'InitialHeader',
      routes: {
        'MPV_V1': (BuildContext context) => const MVP_V1(),
        'InitialHeader': (BuildContext context) => const HomeHeader(),
        'splash': (BuildContext context) => const SplashView(),
        'onboarding': (BuildContext context) => const OnBoarding(),
        'progress': (BuildContext context) => ProgressView(),
        'registro': (BuildContext context) => Registro_view(),
        'inicio_sesion': (BuildContext context) => InicioSesion(),
        'recuperar': (BuildContext context) => RecuperarContrasenia(),
        'principal': (BuildContext context) => Ventana_principal(),
        'ventana2': (BuildContext context) => PrincipalScreen(),
      },
    );
  }
}
