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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Configurações",
          textAlign: TextAlign.center,
          style: GoogleFonts.rubik(
            color: const Color.fromARGB(255, 60, 58, 54),
            fontSize: 24,
            fontWeight: FontWeight.w500,
            letterSpacing: -0.5,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Column(
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
                  padding: const EdgeInsets.only(left: 30, top: 10, bottom: 10),
                  alignment: Alignment.centerLeft,
                  child: const Text("Informações da conta",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
      bottomNavigationBar: const Navbar(),
    );
  }
}
