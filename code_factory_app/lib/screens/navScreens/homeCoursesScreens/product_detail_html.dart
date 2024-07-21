import 'package:code_factory_app/screens/profileScreens/no_payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailHTML extends StatefulWidget {
  const ProductDetailHTML({super.key});

  @override
  State<ProductDetailHTML> createState() => _ProductDetailHTMLState();
}

class _ProductDetailHTMLState extends State<ProductDetailHTML> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 375,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                            "HTML",
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
                Image.asset("assets/images/imgProdDet.png"),
                SizedBox(
                  child: SizedBox(
                    width: 347,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 72,
                          height: 24,
                          decoration: ShapeDecoration(
                              color: const Color.fromARGB(255, 101, 170, 234),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16))),
                          child:  Text("R\$ 50",
                              style: GoogleFonts.rubik(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center),
                        )
                      ],
                    ),
                  ),
                ),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Sobre o curso",
                        style: GoogleFonts.rubik(fontSize: 24, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    Text("Você pode iniciar uma nova carreira em \n"
                        "desenvolvimento web mento hoje aprendendo HTML \n"
                        "e CSS. Tudo que você precisa é de um computador,\n"
                        " um pouco de tempo, muita determinação e um \n"
                        "professor em quem você confie.",
                        style: GoogleFonts.rubik(
                            fontSize: 14, color: const Color.fromARGB(255, 60, 58, 54)),
                        textAlign: TextAlign.left),
                    const SizedBox(height: 16,),
                    Text("Duração",
                        style: GoogleFonts.rubik(fontSize: 20, fontWeight: FontWeight.bold),
                        textAlign: TextAlign.start),
                    Text("1 h 30 min",
                        style: GoogleFonts.rubik(
                            fontSize: 14, color: const Color.fromARGB(255, 60, 58, 54)),
                        textAlign: TextAlign.left)
                  ],
                ),
                Container(
                    width: 343,
                    height: 53,
                    decoration: ShapeDecoration(
                        color: const Color.fromARGB(255, 227, 86, 42),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16))),
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const NoPaymentScreen()),
                        );
                      },
                      child: Text("Adicionar ao carrinho",
                          style: GoogleFonts.rubik(fontSize: 16, color: Colors.white)),
                    ))
              ],
            ),
          ),
        ));
  }
}
