import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:veterinaria/src/painters/progress_pinter.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';

class ProgressView extends StatefulWidget {
  ProgressView({Key? key}) : super(key: key);

  @override
  State<ProgressView> createState() => _ProgressViewState();
}

class _ProgressViewState extends State<ProgressView> {
  double progress = 0.0;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateProgress();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    updateProgress();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          child: CustomPaint(
            painter: ProgressPainter(llenaraBarra: progress)
          ),
        ),
      ),
    );
  }

  void updateProgress() {
    Timer.periodic(
      const Duration(
        milliseconds: 20
      ), (timer) {
        if (progress == 100) {
          Navigator.pushNamed(context, 'MPV_V1');
          progress = 100;
          timer.cancel();
        }
        else {
          setState(() {
            progress = progress + 1;
          });
        } 
    });
  }
}
