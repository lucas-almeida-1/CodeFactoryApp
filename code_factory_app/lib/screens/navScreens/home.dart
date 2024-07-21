import 'package:code_factory_app/components/navbar.dart';
import 'package:code_factory_app/screens/navScreens/homeCoursesScreens/product_detail_html.dart';
import 'package:code_factory_app/screens/navScreens/homeCoursesScreens/product_detail_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 32),
            child: SizedBox(
              width: 375,
              child: Column(
                children: [
                  SizedBox(
                    width: 375,
                    height: 124,
                    child: Center(
                      child: Container(
                        width: 343,
                        padding: const EdgeInsets.only(top: 8),
                        child: Column(
                          children: [
                            SizedBox(
                              width: 343,
                              height: 72,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 343,
                                    height: 26,
                                    child: Text(
                                      "Olá,",
                                      style: GoogleFonts.rubik(
                                        color: const Color.fromARGB(
                                            255, 60, 58, 54),
                                        fontSize: 16,
                                        fontWeight: FontWeight.w400,
                                        letterSpacing: -0.5,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 343,
                                    height: 43,
                                    child: Text(
                                      "Juana Antonieta",
                                      style: GoogleFonts.rubik(
                                        color: const Color.fromARGB(
                                            255, 51, 51, 51),
                                        fontSize: 32,
                                        fontWeight: FontWeight.w700,
                                        letterSpacing: -1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              height: 24,
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 21,
                                    child: Text(
                                      "Categoria:",
                                      style: GoogleFonts.rubik(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: const Color.fromARGB(
                                            255, 60, 58, 54),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 54,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 101, 170, 234),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "#CSS",
                                        style: GoogleFonts.rubik(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromARGB(
                                              255, 242, 242, 242),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 47,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 101, 170, 234),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "#UX",
                                        style: GoogleFonts.rubik(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromARGB(
                                              255, 242, 242, 242),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 15,
                                  ),
                                  Container(
                                    width: 62,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 101, 170, 234),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "#Swift",
                                        style: GoogleFonts.rubik(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromARGB(
                                              255, 242, 242, 242),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  Container(
                                    width: 43,
                                    height: 24,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 101, 170, 234),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12)),
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "#UI",
                                        style: GoogleFonts.rubik(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: const Color.fromARGB(
                                              255, 242, 242, 242),
                                        ),
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
                  const SizedBox(
                    height: 21,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProductDetailUI()),
                      );
                    },
                    splashColor: Colors.grey.withOpacity(0.4),
                    highlightColor: Colors.transparent,
                    child: Container(
                      width: 343,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 190, 186, 179),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 343,
                            height: 194,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 248, 242, 238),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Image.asset(
                                "assets/images/UI.png",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 343,
                            child: Center(
                              child: Column(
                                children: [
                                  SizedBox(
                                    width: 311,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "3h 30min",
                                          style: GoogleFonts.rubik(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromARGB(
                                                255, 91, 160, 146),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "UI",
                                          style: GoogleFonts.rubik(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromARGB(
                                                255, 60, 58, 54),
                                            letterSpacing: -0.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Design avançado de interface móvel",
                                          style: GoogleFonts.rubik(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromARGB(
                                                255, 60, 58, 54),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
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
                                const ProductDetailHTML()),
                      );
                    },
                    splashColor: Colors.grey.withOpacity(0.4),
                    highlightColor: Colors.transparent,
                    child: Container(
                      width: 343,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8)),
                        border: Border.all(
                          width: 1,
                          color: const Color.fromARGB(255, 190, 186, 179),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            width: 343,
                            height: 194,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 248, 242, 238),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(8),
                                topRight: Radius.circular(8),
                              ),
                              child: Image.asset(
                                "assets/images/HTML.png",
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 343,
                            child: Center(
                              child: Column(
                                children: [
                                  Container(
                                    padding: const EdgeInsets.only(top: 4),
                                    width: 311,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "3h 30min",
                                          style: GoogleFonts.rubik(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromARGB(
                                                255, 91, 160, 146),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "HTML",
                                          style: GoogleFonts.rubik(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                            color: const Color.fromARGB(
                                                255, 60, 58, 54),
                                            letterSpacing: -0.5,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Aplicativos web avançados",
                                          style: GoogleFonts.rubik(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w400,
                                            color: const Color.fromARGB(
                                                255, 60, 58, 54),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 8,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: const Navbar(0),
    );
  }
}
