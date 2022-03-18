import 'package:flutter/material.dart';

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
                margin: const EdgeInsets.only(top: 100),
                height: 150, 
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 3,
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top: 30),
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
                margin: const EdgeInsets.only(top: 30),
                width: 300,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {}, 
                  child: Row(
                    children: const [
                      Padding(padding: EdgeInsets.only(right: 0)),
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
                margin: const EdgeInsets.only(top: 30),
                width: 300,
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: (){}, 
                  icon: const Icon(Icons.mail), 
                  
                  label: const Text("Registrarse con e-mail", style: TextStyle(fontSize: 14),),
                  style: ElevatedButton.styleFrom(
                    onPrimary: const Color(0xff64686f),
                    primary: const Color.fromRGBO(200, 200, 200, 0),
                    side: const BorderSide(color: Color(0xff64686f)),
                    elevation: 0,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                  ),
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top:15),
                width: 300,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {}, 
                      child: const Text("Entrar como invitado", 
                        style: TextStyle(color: Color(0xfffc1460), fontSize: 13, fontWeight: FontWeight.bold))
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(top:15),
                width: 300,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {}, 
                      child: const Text("Entrar como vendedor", 
                        style: TextStyle(color: Color(0xff76aa75), fontSize: 13, fontWeight: FontWeight.bold))
                    ),
                  ],
                ),
              ),

              Container(
                margin: const EdgeInsets.only(bottom:15, top: 20),
                width: 300,
                height: 48,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("¿Ya tienes una cuneta?", style: TextStyle(fontSize: 13),),
                    TextButton(
                      onPressed: () {}, 
                      child: const Text("Iniciar Sesión", 
                        style: TextStyle(color: Color(0xfffc1460), fontSize: 13, fontWeight: FontWeight.bold))
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