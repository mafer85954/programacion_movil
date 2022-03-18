import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:veterinaria/src/styles/colors/colors_views.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  int pages = 0;

  List<Map<String, String>> onBoardingDatas = [
    {
      "text": "ESPARCIMIENTO",
      'text1': 'Brindamos todos los servicios para consentir',
      "image": 'assets/images/B1.png',
    },
    {
      "text": "ADOPCIÓN",
      'text1': 'Brindamos todos los servicios para consentir',
      "image": 'assets/images/B2.png',
    },
    {
      "text": "HOSPITALIDAD",
      'text1': 'Brindamos todos los servicios para consentir',
      "image": 'assets/images/B3.png',
    }, 
    {
      'text': 'VETERINARIA',
      'text1': 'Brindamos todos los servicios para consentir',
      "image": 'assets/images/B4.png',
    },
    {
      'text': 'TIENDA',
      'text1': 'Brindamos todos los servicios para consentir',
      "image": 'assets/images/B5.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: SizedBox(
            width: double.infinity, 
            child: Column(
              children: <Widget> [
                Expanded(
                  flex: 4, 
                  child: PageView.builder(
                    onPageChanged: (value) {
                      setState(() {
                        pages = value;
                      });
                    },
                    
                    itemCount: onBoardingDatas.length,
                    itemBuilder: (context, index) => ContentBoarding(
                      text: onBoardingDatas[index]["text"]!,
                      text1: onBoardingDatas[index]["text1"]!,
                      image: onBoardingDatas[index]["image"]!,
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onBoardingDatas.length,
                          (index) => newMethod(index: index),
                        ),
                      ),
                      const Padding(padding: EdgeInsets.only(top: 180)),
                      SizedBox(
                        width: 300,
                        height: 50,
                        child: _button(indexAll : onBoardingDatas.length - 1),
                      )
                    ],
                  ),
                ),   
              ],
            ),
          ),
        )
      ),
    );
  }

  ElevatedButton _button({required int indexAll}) {
    return ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          pages == indexAll
                              ? 'Continuar'
                              : 'Siguiente',
                          style: TextStyle(
                              color: pages == indexAll
                                  ? ColorSelect.btnBackgroundBo1
                                  : ColorSelect.txtBoSubHe,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          
                          side: pages == indexAll
                              ? const BorderSide(width: 3, color: ColorSelect.btnBackgroundBo2)
                              : const BorderSide(width: 3, color: ColorSelect.btnTextBo1),
                              
                          primary: pages == indexAll
                              ? ColorSelect.btnBackgroundBo2
                              : ColorSelect.btnBackgroundBo1,
                        ),
                      );
  }

  AnimatedContainer newMethod({required int index}) {

    return AnimatedContainer(

      margin: const EdgeInsets.only(right: 8),
      height: 4,
      width: pages == index ? 20 : 12, 
      duration: kThemeAnimationDuration,
      decoration: 
        BoxDecoration(
          color: pages == index ? ColorSelect.paginatorNext : ColorSelect.paginator,
          borderRadius: BorderRadius.circular(3)
        ),
    );
  }
}

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key? key,
    required this.text,
    required this.text1,
    required this.image,
  }) : super(key: key);

  final String text, text1, image; 

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              width: 290,
              height: 290,
            ), 
            Text(
              text,
              style: const TextStyle(
                color: ColorSelect.txtBoHe, 
                fontSize: 18,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                text1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: ColorSelect.txtBoSubHe, 
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
        
        
        
        
      ],
    );
  }
}