import 'package:flutter/material.dart';

import '../styles/colors/colors_views.dart';

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:veterinaria/src/pages/modal_window.dart';

// ignore: camel_case_types
class Ventana_principal extends StatefulWidget {
  const Ventana_principal({Key? key}) : super(key: key);
  @override
  State<Ventana_principal> createState() => _Ventana_principal();
}

// ignore: camel_case_types
class _Ventana_principal extends State<Ventana_principal> {
  PageController controller = PageController();
  int pages = 0;

  List<String> animales = [
    "https://www.purina-latam.com/sites/g/files/auxxlc391/files/styles/large/public/2021-10/los-mejores-juegos-de-perritos-cachorros-por-mes-de-edad.png?itok=UNEbd6Xh",
    "https://t1.ea.ltmcdn.com/es/posts/7/4/3/como_ayudar_a_un_gatito_a_defecar_20347_600.jpg",
    "https://media.istockphoto.com/photos/baby-turtle-being-held-picture-id1344044621?k=20&m=1344044621&s=612x612&w=0&h=d61fznldmlwH7X6HW50Nq0L-reqb_HST4X7h5WvsSNY=",
    "https://t2.ea.ltmcdn.com/es/posts/1/9/5/alimentacion_del_conejo_enano_23591_600_square.jpg",
    "https://img.freepik.com/foto-gratis/pato-bebe_38810-7655.jpg",
    "https://elcomercio.pe/resizer/onmCGDTJIsFWTcQVvT_yfBrTve4=/580x330/smart/filters:format(jpeg):quality(75)/arc-anglerfish-arc2-prod-elcomercio.s3.amazonaws.com/public/VA7557Q7WVCZZGVYYCUY4EK2XU.png",
  ];

  List<Map<String, String>> onBoardingDatas = [
    {
      "image": 'assets/images/B1.png',
    },
    {
      "image": 'assets/images/B2.png',
    },
    {
      "image": 'assets/images/B3.png',
    },
    {
      "image": 'assets/images/B4.png',
    },
    {
      "image": 'assets/images/B5.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    int _index = 0;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSelect.appBar,
        title: const Text(
          ' ',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          SizedBox(
            height: 10,
            width: 100,
            child: Image.asset(
              'assets/images/Logo3.png',
            ),
          ),
        ],
      ),
      drawer: const Drawer_Widget(),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                child: Expanded(
                  child: PageView.builder(
                    controller: controller,
                    onPageChanged: (value) {
                      setState(() {
                        pages = value;
                      });
                    },
                    itemCount: onBoardingDatas.length,
                    itemBuilder: (context, index) => ContentBoarding(
                      image: onBoardingDatas[index]["image"]!,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onBoardingDatas.length,
                        (index) => newMethod(index: index),
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(bottom: 30)),
                    Container(
                      //color: ColorSelect.btnBackgroundBo2,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Container(
                                width: 65.0,
                                height: 65.0,
                                decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: AssetImage(
                                            'assets/images/animales/animal1.png')))),
                            Container(
                              width: 65.0,
                              height: 65.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/animales/animal2.png')),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10)),
                            Container(
                              width: 65.0,
                              height: 65.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/animales/animal3.png')),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10)),
                            Container(
                              width: 65.0,
                              height: 65.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/animales/animal4.png')),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10)),
                            Container(
                              width: 65.0,
                              height: 65.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/animales/animal5.png')),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10)),
                            Container(
                              width: 65.0,
                              height: 65.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/animales/animal6.png')),
                              ),
                            ),
                            const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10)),
                            Container(
                              width: 65.0,
                              height: 65.0,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: AssetImage(
                                        'assets/images/animales/animal7.png')),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(top: 20, right: 20, left: 20),
                      width: double.infinity,
                      height: 250,
                      //color: ColorSelect.txtBoHe,
                      child: GridView.count(
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        children: animales
                            .map((e) => _createCards(e, context))
                            .toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: FloatingNavbar(
        borderRadius: 10,
        backgroundColor: ColorSelect.btnTextBo1,
        currentIndex: 1,
        items: [
          FloatingNavbarItem(icon: Icons.close),
          FloatingNavbarItem(icon: Icons.home),
          FloatingNavbarItem(icon: Icons.person),
        ],
        onTap: (int val) {},
      ),
    );
  }

  AnimatedContainer newMethod({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 8),
      height: 8,
      width: pages == index ? 8 : 8,
      duration: kThemeAnimationDuration,
      decoration: BoxDecoration(
          color: pages == index
              ? ColorSelect.paginatorNext
              : ColorSelect.paginator,
          borderRadius: BorderRadius.circular(3)),
    );
  }
}

Card _createCards(String e, BuildContext context) {
  return Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    child: InkWell(
      onTap: () async {
        await showDialog(
            context: context, builder: (_) => DialogContainer(image: e));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image(
          fit: BoxFit.cover,
          image: NetworkImage(e),
        ),
      ),
    ),
  );
}

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key? key,
    required this.image,
  }) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              width: 500,
              height: 150,
            ),
          ],
        ),
      ],
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
