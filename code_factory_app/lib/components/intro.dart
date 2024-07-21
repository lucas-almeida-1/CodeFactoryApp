import 'package:code_factory_app/components/container_intro_1.dart';
import 'package:code_factory_app/components/container_intro_2.dart';
import 'package:code_factory_app/components/container_intro_3.dart';
import 'package:code_factory_app/screens/sign/in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Intro extends StatefulWidget {
  final String imageSource;
  final String title;
  final String subtitle;
  final String bottomText;
  final Widget Function() nextScreen;
  final int screenNumber;

  const Intro(
      {required this.imageSource,
        required this.title,
        required this.subtitle,
        required this.bottomText,
        required this.nextScreen,
        this.screenNumber = 1,
        super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  double width1 = 16.0, width2 = 6.0, width3 = 6.0;
  Color color1 = const Color.fromARGB(255, 101, 170, 234);
  Color color2 = const Color.fromARGB(255, 213, 212, 212);
  Color color3 = const Color.fromARGB(255, 213, 212, 212);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: SizedBox(
              width: 375,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 16, 16, 0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignIn()),
                            );
                          },
                          splashColor: Colors.grey.withOpacity(0.4),
                          highlightColor: Colors.transparent,
                          child: Text(
                            "Skip",
                            style: GoogleFonts.rubik(
                              color: const Color.fromARGB(255, 120, 116, 109),
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 112,
                  ),
                  Column(
                    children: [
                      Image.asset(
                        widget.imageSource,
                        width: 375,
                        height: 264,
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: 341,
                        height: 72,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Text(
                          widget.title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                            letterSpacing: -0.5,
                            color: const Color.fromARGB(255, 60, 58, 54),
                            fontWeight: FontWeight.w500,
                            fontSize: 24,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 341,
                        height: 64,
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Text(
                          widget.subtitle,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                            color: const Color.fromARGB(255, 120, 116, 109),
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      if (widget.screenNumber == 1) const ContainerIntro1(),
                      if (widget.screenNumber == 2) const ContainerIntro2(),
                      if (widget.screenNumber == 3) const ContainerIntro3(),
                    ],
                  ),
                  const SizedBox(
                    height: 72,
                  ),
                  SizedBox(
                    width: 341,
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => widget.nextScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 227, 86, 42),
                        padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Text(
                        widget.bottomText,
                        style: GoogleFonts.rubik(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
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
