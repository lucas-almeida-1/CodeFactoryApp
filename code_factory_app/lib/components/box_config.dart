import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoxConfig extends StatefulWidget {
  final String subTitulo;
  final IconData icone;
  final bool toggle;
  final String nome;

  const BoxConfig(this.nome, this.icone, this.toggle,
      {super.key, this.subTitulo = ""});

  @override
  State<BoxConfig> createState() => _BoxConfigState();
}

class _BoxConfigState extends State<BoxConfig> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
              color: Color.fromARGB(255, 190, 186, 179), width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      width: 343,
      height: 82,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  width: 32,
                  height: 32,
                  decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Color.fromARGB(255, 101, 170, 234)),
                  child: Icon(
                    size: 16,
                    color: Colors.white,
                    widget.icone,
                  ),
                ),
              ), //Botão de notificação
              (widget.subTitulo != "")
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(widget.nome,
                              style: GoogleFonts.rubik(
                                  fontWeight: FontWeight.bold, fontSize: 20)),
                          Text(widget.subTitulo,
                              style: GoogleFonts.rubik(
                                  fontSize: 14,
                                  color:
                                      const Color.fromARGB(255, 120, 116, 109)))
                        ],
                      ),
                    )
                  : Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        widget.nome,
                        style: GoogleFonts.rubik(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: widget.toggle
                ? Switch(
                    inactiveThumbColor: Colors.white,
                    activeColor: const Color.fromARGB(255, 91, 160, 146),
                    value: status,
                    onChanged: (bool value) {
                      setState(() {
                        status = value;
                      });
                    },
                  )
                : const Icon(
                    color: Color.fromARGB(255, 190, 186, 179),
                    Icons.arrow_forward_ios_rounded,
                  ),
          ),
        ],
      ),
    );
  }
}
