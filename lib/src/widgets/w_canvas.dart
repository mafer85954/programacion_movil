import 'package:flutter/material.dart';

class WCanvas1 extends StatelessWidget {
  const WCanvas1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPainter1(),
      ),
    );
  }
}

class _HeaderPainter1 extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 30,
    );

    const textSpan = TextSpan(
      text: 'Hola mundo canvas',
      style: textStyle,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    final xCenter = (size.width - textPainter.width) * 0.5;
    final yCenter = (size.height - textPainter.height) * 0.10;

    final offset = Offset(xCenter, yCenter);


    final paint = Paint();
    paint.color = Colors.cyan;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.moveTo(size.width * 0.5, size.height * 0.5);

    path.lineTo(size.width, 0);
    path.lineTo(size.width, 0);
    path.lineTo( 0, 0);

    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class WCanvas2 extends StatelessWidget {
  const WCanvas2({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPainter2(),
      ),
    );
  }
}

class _HeaderPainter2 extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 30,
    );

    const textSpan = TextSpan(
      text: 'Hola mundo canvas',
      style: textStyle,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    final xCenter = (size.width - textPainter.width) * 0;
    final yCenter = (size.height - textPainter.height) * 0.10;

    final offset = Offset(xCenter, yCenter);


    final paint = Paint();
    paint.color = Colors.cyan;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.moveTo(size.width, 0);

    path.lineTo(0, size.height);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class WCanvas3 extends StatelessWidget {
  const WCanvas3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: CustomPaint(
        painter: _HeaderPainter3(),
      ),
    );
  }
}

class _HeaderPainter3 extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontSize: 15,
    );

    const textSpan = TextSpan(
      text: 'Hola mundo canvas',
      style: textStyle,
    );

    final textPainter = TextPainter(
      text: textSpan,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(minWidth: 0, maxWidth: size.width);

    final xCenter = (size.width - textPainter.width) * 0.12;
    final yCenter = (size.height - textPainter.height) * 0.05;

    final offset = Offset(xCenter, yCenter);

    final xCenter2 = (size.width - textPainter.width) * 0.87;
    final yCenter2 = (size.height - textPainter.height) * 0.05;

    final offset2 = Offset(xCenter2, yCenter2);

    final paint = Paint();
    paint.color = Colors.cyan;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 20;

    final path = Path();
    path.moveTo(0, 0);

    path.lineTo(size.width * 0.25, size.height * 0.25);
    path.lineTo(size.width * 0.50, size.height * 0);
    path.lineTo(size.width * 0.75, size.height * 0.25);
    path.lineTo(size.width, size.height * 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
    textPainter.paint(canvas, offset);
    textPainter.paint(canvas, offset2);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

