import 'package:flutter/material.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';

// ignore: camel_case_types
class MVP_V1 extends StatelessWidget {
   
  const MVP_V1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 24.0),
        child: Center(
          child: Column(
            children: <Widget> [
              Container(
                child: Image.asset("assets/images/Logo_acostado.png"),
                margin: const EdgeInsets.only(top: 80),
                height: 150, 
                
              ),

              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(right: 0)),
                      Icon(Icons.g_mobiledata, size: 40),
                      Padding(padding: EdgeInsets.only(right: 30)),
                      Text("Continuar con Google"),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff3169f5),
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                )
              ),

              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: Row(
                    children: const [
                      Text("  "),
                      Icon(Icons.facebook_outlined, size: 30),
                      Padding(padding: EdgeInsets.only(right: 40)),
                      Text("Continuar con Facebook"),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xff324fa5),
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                )
              ),

              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'registro') ;
                  }, 
                  child: Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(right: 0)),
                      Text("  "),
                      Icon(Icons.mail, size: 30),
                      Padding(padding: EdgeInsets.only(right: 40)),
                      Text("Registrarse con e-mail"),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    onPrimary: const Color(0xff64686f),
                    primary: const Color.fromRGBO(200, 200, 200, 0),
                    side: const BorderSide(color: Color(0xff64686f)),
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                )
              ),

              const Padding(padding: EdgeInsets.only(top: 15)),

              Column(
                children: [
                  SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: (){},
                      child: const Text(
                        'Entrar como invitado',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xfffc1460)
                        ),
                      )
                    ),
                  ),
                  // Vendedor
                  SizedBox(
                    height: 30,
                    child: TextButton(
                      onPressed: (){}, 
                      child: const Text(
                        'Entrar como vendedor',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color(0xf76aa757)
                        ),
                      )
                    ),
                  )
                ],
              ),
              const Padding(padding: EdgeInsets.only(top: 15)),
              Container(
                //margin: const EdgeInsets.only(bottom:0, top: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("¿Ya tienes una cuenta?", style: TextStyle(fontSize: 15),),
                    TextButton(
                      onPressed: () {Navigator.pushNamed(context, 'inicio_sesion') ;}, 
                      child: const Text("Iniciar Sesión", 
                        style: TextStyle(color: Color(0xfffc1460), fontSize: 15, fontWeight: FontWeight.bold))
                    ),
                  ],
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}