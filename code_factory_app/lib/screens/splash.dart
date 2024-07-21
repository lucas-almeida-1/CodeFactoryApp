import 'package:code_factory_app/screens/intro/intro_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const IntroScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 375,
          height: 734,
          child: Center(
            child: SizedBox(
              width: 375,

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 375,
                    child: Image.asset("assets/images/splash.png"),
                  ),
                  SizedBox(
                    width: 375,
                    child: Text(
                      textAlign: TextAlign.center,
                      "CodeFactory",
                      style: GoogleFonts.rubik(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        letterSpacing: -1,
                        color: const Color.fromARGB(255, 60, 58, 54),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
