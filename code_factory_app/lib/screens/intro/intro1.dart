import 'package:code_factory_app/screens/sign/in.dart';
import 'package:flutter/material.dart';
import 'package:code_factory_app/components/intro_screen.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          IntroScreen(
          screenNumber: 1,
          imageSource: "assets/images/screen1.png",
          title: "Bem-vindo ao App",
          subtitle: "Este é um app incrível com muitas funcionalidades.",
          bottomText: "Próximo",
          nextScreen: () => IntroScreen(
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
