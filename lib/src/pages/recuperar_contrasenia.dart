import 'package:flutter/material.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';

class RecuperarContrasenia extends StatefulWidget {
  RecuperarContrasenia({Key? key}) : super(key: key);

  @override
  State<RecuperarContrasenia> createState() => _RecuperarContraseniaState();
}

class _RecuperarContraseniaState extends State<RecuperarContrasenia> {
  final _email = TextEditingController();

  late String _mail;


  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: ColorSelect.paginatorNext),
          onPressed: () => Navigator.of(context).pop(),
        ),        backgroundColor: ColorSelect.appBar,
        title: const Text(
          'Recuperar contraseña                                                          ',
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
      body: ListView(
        children:[
          Container(
            width: double.infinity,            
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 30,
                  child: const Text(
                    'Ingresa tu email para restablecer tu contraseña',
                    style: TextStyle(
                      color: ColorSelect.txtBoSubHe,
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                const Padding(padding: EdgeInsets.only(top: 40)),
                inputs(width, height, context),
              ]
            ),
          ),
        ]
      ),
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
            ),
          ),
          
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: const Text(
              'Ingrese su correo electrónico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña.',
              style: TextStyle(
                color: ColorSelect.txtBoSubHe,
                fontSize: 14,
              
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          
          const Padding(padding: EdgeInsets.only(top: 180)),
          boton(), 
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              
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
        onPressed: () {},
        child: const Text('Enviar solicitud', style: TextStyle(fontSize: 18),),
      ),
    );
  }
}