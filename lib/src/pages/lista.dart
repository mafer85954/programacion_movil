import 'package:flutter/material.dart';

class lista extends StatelessWidget {
  List<Map<String, String>> pedidos = [
    {
      "producto": 'pastel',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'tacos',
      "descripcion": 'descripcion del producto2',
      "precio": '\$50',
    },
    {
      "producto": 'hotcakes',
      "descripcion": 'descripcion del producto3',
      "precio": '\$35',
    },
    {
      "producto": 'hamburgesa',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'torta',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'pizza',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'pollo frito',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'sushi',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'mole de pollo',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'comida china',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'pastel',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'tacos',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'hotcakes',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'hamburgesa',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'torta',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'pizza',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'pollo frito',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'sushi',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'mole de pollo',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
    {
      "producto": 'comida china',
      "descripcion": 'descripcion del producto',
      "precio": '\$100',
    },
  ];

  lista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text(
          'MandaditosExpress ',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          SizedBox(
            height: 10,
            width: 100,
            child: Image.asset(
              'assets/images/Logo3.png', //cambiar logo
            ),
          ),
        ],
      ),
      drawer: const Drawer_Widget(),
      body: ListView(
        children: [
          Card(
            child: Column(
              children: [
                ...pedidos
                    .map((e) => ListTile(
                          leading: Icon(Icons.delivery_dining_rounded),
                          title: Text(e['producto']!),
                          subtitle: Text(e['descripcion']!),
                          trailing: Text(e['precio']!),
                        ))
                    .toList()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Drawer_Widget extends StatelessWidget {
  const Drawer_Widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            // decoration: const BoxDecoration(color: ColorSelect.appBar),
            child: Column(
              children: [
                Expanded(child: Image.asset('assets/images/splash.png')),
                const SizedBox(
                  height: 10.0,
                )
              ],
            ),
          ),
          const ExpansionTile(
            leading: Icon(Icons.pets),
            title: Text("Mascotas"),
            children: <Widget>[
              Text("Mascota 1"),
              SizedBox(
                height: 20,
              ),
              Text("Mascota 2"),
              SizedBox(
                height: 20,
              ),
              Text("Mascota 3"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          const ExpansionTile(
            leading: Icon(Icons.settings),
            title: Text("Ajustes"),
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Text("Ajustes de perfil"),
              SizedBox(
                height: 20,
              ),
              Text("Ajustes mascotas"),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          ListTile(
            leading: const Icon(Icons.exit_to_app),
            title: const Text('Cerrar sesión'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
