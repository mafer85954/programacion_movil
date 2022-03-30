import 'package:flutter/material.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';

class Registro_view extends StatefulWidget {
  Registro_view({Key? key}) : super(key: key);

  @override
  State<Registro_view> createState() => _Registro_viewState();
}

class _Registro_viewState extends State<Registro_view> {
  final _user = TextEditingController();
  final _email = TextEditingController();
  final _password = TextEditingController();
  late String _name;
  late String _mail;
  late String _passw;
  String password = '';

  bool isPasswordVisible = false;

  bool _isObscure = true;
  bool _checkBox = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: ColorSelect.paginatorNext),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Regístrate',
          style: TextStyle(fontSize: 18),
        ),
        iconTheme: const IconThemeData(color: ColorSelect.paginatorNext),
        backgroundColor: ColorSelect.appBar,
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
        children: [ 
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(children: [
              Container(
                width: double.infinity,
                height: 30,
                child: const Text(
                  'Crea una cuenta para empezar a usar la app',
                  style: TextStyle(
                    color: ColorSelect.txtBoSubHe,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.left,
                ),
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
              Container(
                height: 50,
                child: TextField(
                  
                  controller: _user,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: ColorSelect.paginator),
                    ),
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Nombre completo',
                  ),
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
      
              Container(
                height: 50,
                child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: ColorSelect.paginator),
                    ),
                    
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Dirección de correo',
                  ), 
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
                height: 50,
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
                    
                    hintText: 'Contraseña',
                   
                    suffixIcon: IconButton(
                      icon: isPasswordVisible
                          ? const Icon(Icons.visibility_off)
                          : const Icon(Icons.visibility),
                      onPressed: () =>
                          setState(() => isPasswordVisible =  !isPasswordVisible ),
                    ),
                    border: const OutlineInputBorder(),
                  ),
                  obscureText: !isPasswordVisible,
                ),
              ),
              
              Container(
                padding: const EdgeInsets.only(top: 10),
                child: const Text(
                  'La contraseña debe de contener caracteres, numeros y simbolos con un minimo de 6 caracteres',
                  style: TextStyle(
                    color: ColorSelect.txtBoSubHe,
                    fontSize: 14,
                  ),
                ),
              ),
      
              Container(
                width: double.infinity,
                height: 30,
                child: const Text(
                  'Crea una cuenta para empezar a usar la app',
                  style: TextStyle(
                    color: ColorSelect.txtBoSubHe,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.left,
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
                                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                                children: <TextSpan>[
                                  TextSpan(
                                      text: '\ntérminos y condiciones',
                                      style: TextStyle(fontWeight: FontWeight.bold ,color: ColorSelect.textButton)),
                                  TextSpan(text: ' y la '),
                                  TextSpan(
                                      text: '\npolítica de privacidad ',
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
                    onPressed: () {Navigator.pushNamed(context, 'inicio_sesion') ;}, 
                    child: const Text("Iniciar Sesión", 
                      style: TextStyle(color: Color(0xfffc1460), fontSize: 15, fontWeight: FontWeight.bold))
                  ),
                ],
              ),
                        
            ]
          ),
        ),
        ],
      ),
    );
  }
}

Container button() {
    return Container(
      margin: const EdgeInsets.only(top: 25),
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