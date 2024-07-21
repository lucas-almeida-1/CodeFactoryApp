import 'package:code_factory_app/components/intro.dart';
import 'package:code_factory_app/screens/sign/in.dart';
import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          Intro(
            screenNumber: 1,
            imageSource: "assets/images/screen1.png",
            title: "Aprenda a qualquer hora \n e em qualquer lugar",
            subtitle:
                "Sempre é o momento perfeito para \n passar o tempo dia aprendendo algo \n novo, de qualquer lugar!",
            bottomText: "Próximo",
            nextScreen: () => Intro(
              screenNumber: 2,
              imageSource: "assets/images/screen2.png",
              title: "Encontre um curso \n para você",
              subtitle:
                  "O conhecimento não tem fronteiras, nem o seu potencial. Explore um novo universo hoje!",
              bottomText: "Próximo",
              nextScreen: () => Intro(
                screenNumber: 3,
                imageSource: "assets/images/screen3.png",
                title: "Aperfeiçoe suas habilidades",
                subtitle:
                    "O aprendizado é a única aventura que dura a vida toda.",
                bottomText: "Vamos começar",
                nextScreen: () => const SignIn(),
              ),
            ),
          ),
          Intro(
            screenNumber: 2,
            imageSource: "assets/images/screen2.png",
            title: "Encontre um curso para você",
            subtitle:
                "O conhecimento não tem fronteiras, nem o seu potencial. Explore um novo universo hoje!",
            bottomText: "Próximo",
            nextScreen: () => Intro(
              screenNumber: 3,
              imageSource: "assets/images/screen3.png",
              title: "Aperfeiçoe suas habilidades",
              subtitle:
                  "O aprendizado é a única aventura que dura a vida toda.",
              bottomText: "Vamos começar",
              nextScreen: () => const SignIn(),
            ),
          ),
          Intro(
            screenNumber: 3,
            imageSource: "assets/images/screen3.png",
            title: "Aperfeiçoe suas habilidades",
            subtitle:
                "O aprendizado é a única aventura que dura a vida toda.",
            bottomText: "Vamos começar",
            nextScreen: () => const SignIn(),
          ),
        ],
      ),
    );
  }
}
