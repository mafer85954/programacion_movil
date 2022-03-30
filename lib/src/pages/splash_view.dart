import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:veterinaria/src/pages/mvp_v1.dart';
import 'package:veterinaria/src/pages/progress_view.dart';
import 'package:veterinaria/src/pages/registro.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';
import 'dart:ui' as ui;

import 'on_boarding.dart';


class SplashView extends StatefulWidget {
  
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

//invocar un evento que se mantendra en ejecucion
class _SplashViewState extends State<SplashView> {
    ui.Image? image;


  @override
  //inicializar los estados que viviran dentro para que se ejecute en primera estancia
  void initState() {
    super.initState();
    _loadImage('assets/images/splash.png');
    _toOnbording();
    
  }

  @override
  Widget build(BuildContext context) {
    // agregaremos la parte del canvas 
    return Scaffold(
      body: Center(
        child: SizedBox(
          child: CustomPaint(
            painter: _SplashCanvas(image),
          ), 
        height: double.infinity, 
        width: double.infinity
        ),
      ),
    );
  }

  _toOnbording() async {
    await Future.delayed(const Duration(milliseconds: 3000), () {});
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(
        builder: (context)=> const OnBoarding(),
        //builder: (context)=> ProgressView(),
        //builder: (context)=> const MVP_V1(),
        //builder: (context)=> Registro_view(),
      ),
    );

    print('hola Future');
  }

  _loadImage(String path) async {
    final data = await rootBundle.load(path);
    final bytes = data.buffer.asUint8List();
    final image = await decodeImageFromList(bytes);

    setState(() => this.image = image);
  }
}

class _SplashCanvas extends CustomPainter {
  final ui.Image? imageCanvas;
  const _SplashCanvas(this.imageCanvas);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint();
    paint.color = ColorSelect.splashColor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 5;

    final path = Path();

    path.lineTo(0, size.height*0.10);
    path.quadraticBezierTo(size.width*0.1, size.height * 0.20, size.width/3, size.height*0.12);
    path.quadraticBezierTo(size.width/2.1, size.height * 0.08, 2*(size.width/3), size.height*0.12);
    path.quadraticBezierTo(size.width/1.1, size.height * 0.15, 3*(size.width/3), size.height*0.1);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);


    final paint2 = Paint();
    paint2.color = ColorSelect.splashColor;
    paint2.style = PaintingStyle.fill;
    paint2.strokeWidth = 5;
    final path2 = Path();

    path2.lineTo(0, size.height);
    path2.quadraticBezierTo(size.width*0.75, size.height*0.75, size.width, size.height);
    path2.lineTo(size.width, size.height);
    path2.lineTo(0, size.height);

    canvas.drawPath(path2, paint2);

    canvas.scale(0.25,0.25);
    
    canvas.drawImage(imageCanvas!, const Offset(130 * 2.5, 300 * 3.0), paint);

  }

  
  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}



