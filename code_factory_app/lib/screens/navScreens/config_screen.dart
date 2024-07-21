import 'package:code_factory_app/components/navbar.dart';
import 'package:flutter/material.dart';
import 'package:code_factory_app/components/box_config.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  State<ConfigScreen> createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
            child: SizedBox(
              width: 375,
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
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
                        "Configurações",
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
          ),
          Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  child: Image(
                    image: AssetImage('assets/images/imgScreen3.png'),
                    width: 343,
                    height: 190,
                  ),
                ),
                const boxConfig(
                    "Notificação", Icons.notifications_rounded, true),
                Container(
                  width: 343,
                  padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                  child:  Text("Informações da conta",
                      textAlign: TextAlign.left,
                      style:
                          GoogleFonts.rubik(fontWeight: FontWeight.bold, fontSize: 20,)),
                ),
                const boxConfig("Nome", Icons.manage_accounts, false,
                    subTitulo: "Juana Antonieta"),
                const boxConfig("Email", Icons.mail, false,
                    subTitulo: "juanita123@gmail.com"),
                const boxConfig("Senha", Icons.lock, false,
                    subTitulo: "alterada a 2 semanas"),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:  Navbar(2),
    );
  }
}
