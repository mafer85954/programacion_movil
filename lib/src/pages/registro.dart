import 'package:flutter/material.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';

class Registro_view extends StatefulWidget {
  Registro_view({Key? key}) : super(key: key);

  @override
  State<Registro_view> createState() => _Registro_viewState();
}

class _Registro_viewState extends State<Registro_view> {
  bool _isObscure = true;
  bool _checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Text(
          'Regístrate                                                        ',
          style: TextStyle(fontSize: 22),
        ),
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        backgroundColor: ColorSelect.appBar,
        actions: [
          Image.asset(
            '../assets/images/logo3.png',
            scale: 0.4,
          ),
        ],
      ),
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 40),
                  // padding: const EdgeInsets.only(right: 10),
                  child: const Text(
                    ' Crea una cuenta para empezar a usar la app',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: ColorSelect.txtBoSubHe,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Nombre',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 5)),
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: 'Nombre completo',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Correo electrónico',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 5)),
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: 'Dirección de correo',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 25)),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  'Contraseña',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.only(top: 5)),
            TextField(
              onChanged: (value) {},
              decoration: const InputDecoration(
                hintText: 'Contraseña',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              child: const Text(
                'La contraseña debe de contener caracteres, numeros y simbolos con un minimo de 6 caracteres',
                style: TextStyle(
                  color: ColorSelect.txtBoSubHe,
                  fontSize: 12,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(value: _checkBox, onChanged: (a) {setState(() {
                    _checkBox = a!;
                  }); }
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 0.0, bottom: 0.0),
                    child: Row(
                      children: [
                        const Padding(padding: EdgeInsets.only(right: 10)),
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: RichText(
                            
                            text: const TextSpan(
                              text: 'Al registrarme, acepto los ',
                              style: TextStyle(color: ColorSelect.btnBackgroundBo2),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'términos y condiciones',
                                    style: TextStyle(fontWeight: FontWeight.bold ,color: ColorSelect.textButton)),
                                TextSpan(text: ' y la \n'),
                                TextSpan(
                                    text: 'política de privacidad ',
                                    style: TextStyle(fontWeight: FontWeight.bold ,color: ColorSelect.textButton)),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            button(), 
            const Padding(padding: EdgeInsets.only(top: 30)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("¿Ya tienes una cuenta?", style: TextStyle(fontSize: 15),),
                TextButton(
                  onPressed: () {}, 
                  child: const Text("Iniciar Sesión", 
                    style: TextStyle(color: Color(0xfffc1460), fontSize: 15, fontWeight: FontWeight.bold))
                ),
              ],
            ),
                      
          ]
        ),
      ),
    );
  }
}

Container button() {
    return Container(
            margin: const EdgeInsets.only(top: 30),
            width: 300,
            height: 48,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: ColorSelect.btnBackgroundBo2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                )
              ),
              onPressed: () {},
              child: const Text(
                'Crear Cuenta',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                )
              ),
            ),
          );
  }

  
