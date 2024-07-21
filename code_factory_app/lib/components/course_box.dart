import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Course extends StatefulWidget {
  const Course(this.cor, this.imagem, this.nome, this.descricao, this.tempo,
      {super.key});

  final Color cor;
  final String imagem;
  final String nome;
  final String tempo;
  final String descricao;

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: Colors.grey),
                borderRadius: BorderRadius.circular(8)),
            color: widget.cor),
        width: 343,
        height: 297,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Image.asset(widget.imagem),
            ),
            Container(
              width: 343,
              height: 103,
              decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(8),
                          bottomRight: Radius.circular(8))),
                  color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.tempo,
                        style: GoogleFonts.rubik(
                          color: const Color.fromARGB(255, 91, 160, 146),
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        )),
                    Text(widget.nome,
                        style: GoogleFonts.rubik(
                          color: const Color.fromARGB(255, 60, 58, 54),
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                        )),
                    Text(widget.descricao,
                        style: GoogleFonts.rubik(
                          color: const Color.fromARGB(255, 60, 58, 54),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
