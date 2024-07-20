import 'package:code_factory_app/screens/profileScreens/your_courses_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SavedCourses extends StatelessWidget {
  const SavedCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 375,
          height: 734,
          child: Column(
            children: [
              SizedBox(
                width: 375,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
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
                          "Salvos",
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
              ),
              const SizedBox(
                height: 127,
              ),
              SizedBox(
                width: 375,
                height: 367,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 375,
                      height: 253,
                      child: Image.asset("assets/images/notSaved.png"),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    SizedBox(
                      width: 373,
                      height: 82,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 341,
                            height: 32,
                            child: Text(
                              "Cursos não salvo",
                              style: GoogleFonts.rubik(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                letterSpacing: -0.5,
                                color: const Color.fromARGB(255, 60, 58, 54),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 341,
                            height: 42,
                            child: Text(
                              "Tente salvar o curso novamente em alguns minutos",
                              style: GoogleFonts.rubik(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(255, 109, 109, 120),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
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
                            builder: (context) => const YourCoursesScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                    const Color.fromARGB(255, 227, 86, 42),
                    padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Text(
                    // Texto do botão
                    "Continuar",
                    style: GoogleFonts.rubik(
                      letterSpacing: -0.5,
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
    );
  }
}
