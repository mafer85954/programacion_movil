import 'package:flutter/material.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';

class OpcionesProductosWidget extends StatefulWidget {
  const OpcionesProductosWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  State<OpcionesProductosWidget> createState() =>
      _OpcionesProductosWidgetState();
}

class _OpcionesProductosWidgetState extends State<OpcionesProductosWidget> {
  int opcion = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: SizedBox(
        height: widget.size.height * 0.3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: widget.size.width * 0.48,
              height: widget.size.height * 0.28,
              child: GestureDetector(
                onTap: (() {
                  setState(() {
                    opcion = 1;
                  });
                }),
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: (opcion == 1)
                        ? const BorderSide(color: ColorSelect.appBar)
                        : const BorderSide(
                            color: Color.fromARGB(255, 188, 186, 186)),
                    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                  ),
                  child: Column(
                    children: [
                      Image.asset("assets/images/B5.png"),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 30),
                      ),
                      Text(
                        "Productos",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: widget.size.width * 0.05,
                          color: ColorSelect.btnBackgroundBo2,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: widget.size.width * 0.48,
              height: widget.size.height * 0.28,
              child: GestureDetector(
                onTap: (() {
                  setState(() {
                    opcion = 2;
                  });
                }),
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: (opcion == 2)
                        ? const BorderSide(color: ColorSelect.appBar)
                        : const BorderSide(
                            color: Color.fromARGB(255, 188, 186, 186)),
                    borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
                  ),
                  child: Column(
                    children: [
                      Image.asset("assets/images/B1.png"),
                      Padding(
                        padding:
                            EdgeInsets.only(top: widget.size.height * 0.02),
                        child: Text(
                          "Servicios",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: widget.size.width * 0.05,
                            color: ColorSelect.btnBackgroundBo2,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
