import 'package:flutter/material.dart';

class noPaymentScreen extends StatefulWidget {
  const noPaymentScreen({super.key});

  @override
  State<noPaymentScreen> createState() => _noPaymentScreenState();
}

class _noPaymentScreenState extends State<noPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text("Pagamento",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.center)

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/imgPayment.png"),
            const Text("Nenhuma forma de \n pagamento",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
            const Text("Você não tem nenhuma\n forma de pagamento",style: TextStyle(fontSize: 12,color: Color.fromARGB(255, 109, 109, 120)),textAlign: TextAlign.center),
            Container(
                width: 343,
                height: 53,
                decoration: ShapeDecoration(
                    color: const Color.fromARGB(255, 227, 86, 42),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16))),
                child: TextButton(
                  onPressed: (){ print("Botão precionado,");},
                  child: const Text("Continue",style: TextStyle(fontSize: 16,color: Colors.white)),
                )
            )

          ],
        )
    );
  }
}
