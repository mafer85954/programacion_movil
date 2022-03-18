import 'package:flutter/material.dart';
import 'package:veterinaria/src/pages/mvp_v1.dart';
import 'package:veterinaria/src/pages/home_header.dart';

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
      initialRoute: 'InitialHeader',
      routes: {
        'MPV_V1' : (BuildContext context) => const MVP_V1(),
        'InitialHeader' : (BuildContext context) => const HomeHeader(),
      },
    );
  }
}

