import 'package:flutter/material.dart';
import 'package:veterinaria/src/pages/on_boarding.dart';
import 'package:veterinaria/src/pages/splash_view.dart';
import 'package:veterinaria/src/widgets/w_canvas.dart';
import 'package:veterinaria/src/widgets/w_headers.dart';

import 'mvp_v1.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashView(),
    );
  }
}