import 'package:code_factory_app/screens/profileScreens/no_payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetailUI extends StatefulWidget {
  const ProductDetailUI({super.key});

  @override
  State<ProductDetailUI> createState() => _ProductDetailUIState();
}

class _ProductDetailUIState extends State<ProductDetailUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 375,
              child: Row(
                children: [
                  ClipOval(
                    child: SizedBox(
                      width: 48,
                      height: 48,
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
                      "UI",
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
            Image.asset("assets/images/imgProdDet.png"),
            SizedBox(
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
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    child: Text(
                      "R\$ 50",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.rubik(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sobre o curso",
                    style: GoogleFonts.rubik(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.5,
                      color: const Color.fromARGB(255, 60, 58, 54),
                    ),
                    textAlign: TextAlign.start),
                Text(
                    "Você pode iniciar uma nova carreira em \n"
                    "UI hoje. Tudo que você precisa é de um computador,\n"
                    " um pouco de tempo, muita determinação e um \n"
                    "professor em quem você confie.",
                    style: GoogleFonts.rubik(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(255, 60, 58, 54)),
                    textAlign: TextAlign.left),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  "Duração",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.5,
                    color: const Color.fromARGB(255, 60, 58, 54),
                  ),
                ),
                Text(
                  "1 h 30 min",
                  textAlign: TextAlign.left,
                  style: GoogleFonts.rubik(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: const Color.fromARGB(255, 60, 58, 54),
                  ),
                ),
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
                        builder: (context) => const NoPaymentScreen()),
                  );
                },
                child: Text(
                  "Adicionar ao carrinho",
                  style: GoogleFonts.rubik(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: const Color.fromARGB(255, 242, 242, 242),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
