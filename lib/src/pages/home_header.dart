import 'package:flutter/material.dart';

import 'package:veterinaria/src/pages/splash_view.dart';


class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashView(),
    );
  }
}