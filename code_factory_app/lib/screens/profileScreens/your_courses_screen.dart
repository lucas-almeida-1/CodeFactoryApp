import 'package:code_factory_app/components/course_box.dart';
import 'package:code_factory_app/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class YourCoursesScreen extends StatefulWidget {
  const YourCoursesScreen({super.key});

  @override
  State<YourCoursesScreen> createState() => _YourCoursesScreenState();
}

class _YourCoursesScreenState extends State<YourCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            width: 375,
            child: Row(
              textDirection: TextDirection.ltr,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 343,
                  child: Row(
                    children: [
                      ClipOval(
                        child: SizedBox(
                          width: 40,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(0),
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,
                              side: const BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 190, 186, 179),
                              ),
                            ),
                            child: const Icon(Icons.chevron_left),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 263,
                        height: 32,
                        child: Text(
                          textAlign: TextAlign.center,
                          "Seus Cursos",
                          style: GoogleFonts.rubik(
                            letterSpacing: -0.5,
                            color: const Color.fromARGB(255, 60, 58, 54),
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ), //Botão de voltar
          const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Course(
                  Color.fromARGB(255, 248, 242, 238),
                  "assets/images/imgYourCourses.png",
                  "Flutter",
                  "Aplicativos iOS e android avançados",
                  "Parou em 1 h 20 min"),
              Course(
                  Color.fromARGB(255, 230, 237, 244),
                  "assets/images/imgYourCourses2.png",
                  "Scrum",
                  "Curso avançado de organização de projetos",
                  "Parou em 1 h 20 min"),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const Navbar(1),
    );
  }
}
