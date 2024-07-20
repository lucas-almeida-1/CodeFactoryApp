import 'package:code_factory_app/components/courseBox.dart';
import 'package:code_factory_app/components/navibar.dart';
import 'package:flutter/material.dart';

<<<<<<< HEAD:code_factory_app/lib/screens/profileScreens/your_courses_screen.dart
import 'package:code_factory_app/components/course_box.dart';
import 'package:code_factory_app/components/navbar.dart';

class YourCoursesScreen extends StatefulWidget {
  const YourCoursesScreen({super.key});
=======
class yourCourses extends StatefulWidget {
  const yourCourses({super.key});
>>>>>>> 9a2f2c4967915af1ef7cb364a7984b885b221e43:code_factory_app/lib/screens/profileScreens/yourCoursesScreen.dart

  @override
  State<YourCoursesScreen> createState() => _YourCoursesScreenState();
}

class _YourCoursesScreenState extends State<YourCoursesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Seus cursos",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: const <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              course(
                  Color.fromARGB(255, 248, 242, 238),
                  "assets/images/imgYourCourses.png",
                  "Flutter",
                  "Aplicativos iOS e android avançados",
                  "Parou em 1 h 20 min"),
              course(
                  Color.fromARGB(255, 230, 237, 244),
                  "assets/images/imgYourCourses2.png",
                  "Scrum",
                  "Curso avançado de organização de projetos",
                  "Parou em 1 h 20 min"),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const Navbar(),
    );
  }
}
