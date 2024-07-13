import 'package:flutter/material.dart';

class boxConfig extends StatefulWidget {
 final String subTitulo;
 final IconData icone;
 final bool toogle;
 final String nome;

  const boxConfig(this.nome, this.icone, this.toogle,
      {super.key, this.subTitulo = ""});

  @override
  State<boxConfig> createState() => _boxConfigState();
}

class _boxConfigState extends State<boxConfig> {
  bool status = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  side: const BorderSide(
                      color: Color.fromARGB(100, 190, 186, 179), width: 1),
                  borderRadius: BorderRadius.circular(16)),
              color: Colors.white),
          width: 343,
          height: 82,
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(
              width: 32,
              height: 32,
              decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color.fromARGB(255, 101, 170, 234)),
              child: Icon(
                color: Colors.white,
                widget.icone,
              ),
            ), //Botão de notificação
            (widget.subTitulo != "")
                ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.nome,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20)),
                Text(widget.subTitulo,
                    style: const TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 120, 116, 109)))
              ],
            )
                : Text(
              widget.nome,
              style: const TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 20),
            ),
            widget.toogle
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
              color: Color.fromARGB(100, 190, 186, 179),
              Icons.arrow_forward_ios_rounded,
            )
          ])),
    );
  }
}