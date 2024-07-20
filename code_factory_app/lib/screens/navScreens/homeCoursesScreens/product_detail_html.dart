import 'package:code_factory_app/screens/profileScreens/no_payment_screen.dart';
import 'package:flutter/material.dart';

class ProductDetailHTML extends StatefulWidget {
  const ProductDetailHTML({super.key});

  @override
  State<ProductDetailHTML> createState() => _ProductDetailHTMLState();
}

class _ProductDetailHTMLState extends State<ProductDetailHTML> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("HTML",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center)),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/imgProdDet.png"),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 72,
                      height: 24,
                      decoration: ShapeDecoration(
                          color: Color.fromARGB(255, 101, 170, 234),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16))),
                      child: const Text("R\$ 50",
                          style: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center),
                    )
                  ],
                ),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Sobre o curso",
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start),
                  Text("Você pode iniciar uma nova carreira em \n"
                      "desenvolvimento web mento hoje aprendendo HTML \n"
                      "e CSS. Tudo que você precisa é de um computador,\n"
                      " um pouco de tempo, muita determinação e um \n"
                      "professor em quem você confie.",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromARGB(255, 60, 58, 54)),
                      textAlign: TextAlign.left),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Duração",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.start),
                  Text("1 h 30 min",
                      style: TextStyle(
                          fontSize: 14, color: Color.fromARGB(255, 60, 58, 54)),
                      textAlign: TextAlign.left),
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
                    child: const Text("Adicionar ao carrinho",
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  ))
            ],
          ),
        ));
  }
}
