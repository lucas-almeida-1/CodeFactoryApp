import 'package:code_factory_app/screens/sign/in.dart';
import 'package:flutter/material.dart';
import 'package:code_factory_app/components/intro_screen.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _pageController = PageController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          IntroScreen(
          screenNumber: 1,
          imageSource: "assets/images/screen1.png",
          title: "Aprenda a qualquer hora \n e em qualquer lugar",
          subtitle: "Sempre é o momento perfeito para \n passar o tempo dia aprendendo algo \n novo, de qualquer lugar!",
          bottomText: "Próximo",
          nextScreen: () => IntroScreen(
            screenNumber: 2,
            imageSource: "assets/images/screen2.png",
            title: "Encontre um curso \n para você",
            subtitle:
                "O conhecimento não tem fronteiras, nem o seu potencial. Explore um novo universo hoje!",
            bottomText: "Próximo",
            nextScreen: () => IntroScreen(
              screenNumber: 3,
              imageSource: "assets/images/screen3.png",
              title: "Aperfeiçoe suas habilidades",
              subtitle: "O aprendizado é a única aventura que dura a vida toda.",
              bottomText: "Vamos começar",
              nextScreen: () => const SignIn(),
            ),
          ),
        ),
        IntroScreen(
            screenNumber: 2,
            imageSource: "assets/images/screen2.png",
            title: "Encontre um curso para você",
            subtitle:
                "O conhecimento não tem fronteiras, nem o seu potencial. Explore um novo universo hoje!",
            bottomText: "Próximo",
            nextScreen: () => IntroScreen(
              screenNumber: 3,
              imageSource: "assets/images/screen3.png",
              title: "Aperfeiçoe suas habilidades",
              subtitle: "O aprendizado é a única aventura que dura a vida toda.",
              bottomText: "Vamos começar",
              nextScreen: () => const SignIn(),
            ),
          ),
          IntroScreen(
              screenNumber: 3,
              imageSource: "assets/images/screen3.png",
              title: "Aperfeiçoe suas habilidades",
              subtitle: "O aprendizado é a única aventura que dura a vida toda.",
              bottomText: "Vamos começar",
              nextScreen: () => const SignIn(),
            ),
      ],
      ),
    );
  }
}
