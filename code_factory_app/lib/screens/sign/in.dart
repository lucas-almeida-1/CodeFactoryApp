import 'package:code_factory_app/screens/navScreens/home.dart';
import 'package:code_factory_app/screens/sign/up.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isObscured=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 52),
            child: Container(
              alignment: Alignment.center,
              color: Colors.white,
              child: Form(
                key: _formKey,
                child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Padding(
                        padding:  EdgeInsets.all(16),
                        child:  Image(image: ExactAssetImage("assets/images/imgLogin.png")),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Text("Login",
                            style: GoogleFonts.rubik(
                              color: const Color.fromARGB(255, 51, 51, 51),
                              decoration: TextDecoration.none,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                            )),
                      ),
                    ],
                  ), //Imagem e título
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 343,
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Campo obrigatório";
                                }
                                return null;
                              },
                              controller: email,
                              keyboardType: TextInputType.emailAddress,
                              decoration: const InputDecoration(
                                hintText: "Email",
                                fillColor: Colors.white,
                                filled: true,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Color.fromARGB(
                                        255, 190, 186, 179)),
                                    borderRadius: BorderRadius.all(Radius.circular(12))),
                              )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 343,
                          child: TextFormField(
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Campo obrigatório";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.visiblePassword,
                              controller: senha,
                              obscureText: isObscured,
                              enableSuggestions: false,
                              autocorrect: false,
                              decoration:  InputDecoration(
                                suffixIcon: IconButton(onPressed: (){
                                  setState(() {
                                    isObscured=!isObscured;
                                  });}, icon: isObscured? const Icon(Icons.visibility_outlined):const Icon(Icons.visibility_off_outlined)),
                                hintText: "Senha",
                                fillColor: Colors.white,
                                filled: true,
                                border: const OutlineInputBorder(
                                    borderSide:BorderSide(color: Color.fromARGB(255, 190, 186, 179)),
                                    borderRadius: BorderRadius.all(Radius.circular(12))),
                              )),
                        ),
                      ),
                    ],
                  ), //Email e senha
                  const SizedBox(height: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            width: 343,
                            height: 53,
                            decoration: ShapeDecoration(
                                color: const Color.fromARGB(255, 227, 86, 42),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16))),
                            child: TextButton(
                              onPressed: (){
                                if (_formKey.currentState!.validate()) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Processando..."),
                                      duration: Duration(milliseconds: 1600),
                                    ),
                                  );
                                  Future.delayed(const Duration(seconds: 2), () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("Bem-vindo de volta!"),
                                        duration: Duration(seconds: 2),
                                      ),
                                    );
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                          const HomeScreen()),
                                    );
                                  });
                                }
                              },
                              child: Text("Log in",style:  GoogleFonts.rubik(
                                letterSpacing: -0.5,
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,)),
                            )
                        ),
                      ),//Botão de Login
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                  const SignUp()),
                            );
                          },
                          child: Text("Registe-se",style: GoogleFonts.rubik(
                            color: const Color.fromARGB(255, 120, 116, 109),
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,)),
                        ),
                      ),//Registre-se
                    ],
                  ),//Login e Registrar-se
                ],
              ),
              ),

            ),
          ),
        ));
  }
}
