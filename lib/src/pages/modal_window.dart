import 'package:flutter/material.dart';

class DialogContainer extends StatelessWidget {
  DialogContainer({Key? key, required this.image}) : super(key: key);
  String image;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: SizedBox(
        width: 300,
        height: 300,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 130,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: const Text(
                'Descripción',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
            ),
            const Text(
              'Esta es una bonita mascota',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
