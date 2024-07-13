import 'package:flutter/material.dart';

import '../Widgets/courseBox.dart';
import '../Widgets/navibar.dart';

class yourCourses extends StatefulWidget {
  const yourCourses({super.key});

  @override
  State<yourCourses> createState() => _yourCoursesState();
}

class _yourCoursesState extends State<yourCourses> {
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
      body:ListView(
        children: const <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              course(Color.fromARGB(255, 248, 242, 238),"assets/images/imgYourCourses.png","Flutter","Aplicativos iOS e android avançados","Parou em 1 h 20 min"),
              course(Color.fromARGB(255, 230, 237, 244),"assets/images/imgYourCourses2.png","Scrum","Curso avançado de organização de projetos","Parou em 1 h 20 min"),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const navibar(),
    );
  }
}
