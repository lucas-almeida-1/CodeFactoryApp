import 'package:code_factory_app/screens/profileScreens/no_payment_screen.dart';
import 'package:code_factory_app/screens/profileScreens/saved.dart';
import 'package:code_factory_app/screens/profileScreens/your_courses_screen.dart';
import 'package:code_factory_app/screens/sign/in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:code_factory_app/components/navbar.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
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
                              color: Color.fromARGB(255, 190, 186, 179),
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
                            "Perfil",
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
                  height: 48,
                ),
                SizedBox(
                  width: 375,
                  height: 492,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 140,
                        height: 140,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 4,
                            color: const Color.fromARGB(255, 101, 170, 234),
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/profile.png",
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const YourCoursesScreen()),
                          );
                        },
                        splashColor: Colors.grey.withOpacity(0.4),
                        highlightColor: Colors.transparent,
                        child: Container(
                          width: 343,
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 190, 186, 179),
                            ),
                          ),
                          child: Text(
                            "Seus cursos",
                            style: GoogleFonts.rubik(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                              color: const Color.fromARGB(255, 60, 58, 54),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SavedCourses()),
                          );
                        },
                        splashColor: Colors.grey.withOpacity(0.4), // Ajuste de cor ao clicar
                        highlightColor: Colors.transparent, // Preenchimento de sombra ao clicar
                        child: Container(
                          width: 343,
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 190, 186, 179),
                            ),
                          ),
                          child: Text(
                            "Salvos",
                            style: GoogleFonts.rubik(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                              color: const Color.fromARGB(255, 60, 58, 54),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const NoPaymentScreen()),
                          );
                        },
                        splashColor: Colors.grey.withOpacity(0.4),
                        highlightColor: Colors.transparent,
                        child: Container(
                          width: 343,
                          height: 80,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.white,
                            border: Border.all(
                              width: 1,
                              color: const Color.fromARGB(255, 190, 186, 179),
                            ),
                          ),
                          child: Text(
                            "Pagamento",
                            style: GoogleFonts.rubik(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              letterSpacing: -0.5,
                              color: const Color.fromARGB(255, 60, 58, 54),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                const SignIn()),
                          );
                        },
                        splashColor: Colors.grey.withOpacity(0.4), // Ajuste de cor ao clicar
                        highlightColor: Colors.transparent, // Preenchimento de sombra ao clicar
                        child: Text(
                          "Sair do aplicativo",
                          style: GoogleFonts.rubik(
                            color: const Color.fromARGB(255, 120, 116, 109),
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const Navbar(1),
    );
  }
}
