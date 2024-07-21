import 'package:code_factory_app/screens/profileScreens/your_courses_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NoPaymentScreen extends StatefulWidget {
  const NoPaymentScreen({super.key});

  @override
  State<NoPaymentScreen> createState() => _NoPaymentScreenState();
}

class _NoPaymentScreenState extends State<NoPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              SizedBox(
                width: 375,
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
                        "Pagamento",
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
              const SizedBox(
                height: 127,
              ),
              Image.asset("assets/images/imgPayment.png"),
              const SizedBox(
                height: 32,
              ),
               Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("Nenhuma forma de \n pagamento",style: GoogleFonts.rubik(fontSize: 24,fontWeight: FontWeight.w500),textAlign: TextAlign.center),
                   const SizedBox(
                     height: 8,
                   ),
                   Text("Você não tem nenhuma\n forma de pagamento",style: GoogleFonts.rubik(fontSize: 14, fontWeight: FontWeight.w400,color: const Color.fromARGB(255, 109, 109, 120)),textAlign: TextAlign.center),
                 ],
               ),
              const SizedBox(
                height: 40
              ),
              Container(
                  width: 343,
                  height: 53,
                  decoration: ShapeDecoration(
                      color: const Color.fromARGB(255, 227, 86, 42),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const YourCoursesScreen()),
                    );},
                    child:  Text("Continue",style: GoogleFonts.rubik(fontSize: 16, fontWeight: FontWeight.w500,color: Colors.white)),
                  )
              )

            ],
          ),
        )
    );
  }
}
