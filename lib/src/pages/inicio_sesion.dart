import 'package:flutter/material.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';

import '../models/login_service.dart';

class InicioSesion extends StatefulWidget {
  InicioSesion({Key? key}) : super(key: key);

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  final _email = TextEditingController();
  final _password = TextEditingController();

  late String _mail;
  late String _passw;

  String password = '';
  String email = '';
  bool isPasswordVisible = true;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios,
              color: ColorSelect.paginatorNext),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: ColorSelect.appBar,
        title: const Text(
          'Iniciar Sesión                                                           ',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          Container(
            height: 10,
            width: 100,
            child: Image.asset(
              'assets/images/Logo3.png',
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(children: [
            const Padding(padding: EdgeInsets.only(top: 20)),
            Container(
              width: double.infinity,
              height: 30,
              child: const Text(
                'Inicia sesión con tu cuenta para continuar',
                style: TextStyle(
                  color: ColorSelect.txtBoSubHe,
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 50)),
            inputs(width, height, context),
          ]),
        ),
      ]),
    );
  }

  Container inputs(double width, double height, BuildContext context) {
    return Container(
      //padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                'Correo Electrónico',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 5)),
          Container(
            color: null,
            height: 45,
            child: TextField(
              controller: _email,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: ColorSelect.paginator),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Email Address',
              ),
              onChanged: (text) {
                email = text;
              },
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
          Container(
            height: 45,
            child: TextField(
              onChanged: (value) => setState(() => this.password = value),
              onSubmitted: (value) => setState(() => this.password = value),
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: ColorSelect.paginator),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'Password',
                suffixIcon: IconButton(
                  icon: isPasswordVisible
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off),
                  onPressed: () =>
                      setState(() => isPasswordVisible = !isPasswordVisible),
                ),
                border: const OutlineInputBorder(),
              ),
              obscureText: isPasswordVisible,
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, 'recuperar');
              },
              child: Container(
                width: double.infinity,
                child: const Text(
                  '¿Has olvidado tu contraseña?',
                  style: TextStyle(
                      color: ColorSelect.paginatorNext,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.only(top: 100)),
          boton(),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '¿Todavía no tienes cuenta? ',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'registro');
                    },
                    child: const Text(
                      'Registrate',
                      style: TextStyle(
                          color: ColorSelect.paginatorNext,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }

  Container boton() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
      width: 400,
      height: 48,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: ColorSelect.btnBackgroundBo2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        /*onPressed: () {
          if (email == '' && password == '') {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                duration: Duration(milliseconds: 1000),
                content: Text('Rellene los campos'),
              ),
            );
          } else {
            login(email, password).then((value) {
              print(value);
              if (value['status'] == 'success') {
                Navigator.pushReplacementNamed(context, 'principal');
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    duration: Duration(milliseconds: 1000),
                    content: Text('Contraseña incorrecta'),
                  ),
                );
              }
            });
          }
        },*/
        onPressed: () {
          Navigator.pushNamed(context, 'principal');
        },
        child: const Text(
          'Ingresar',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
