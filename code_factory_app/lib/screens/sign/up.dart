import 'package:code_factory_app/screens/navScreens/home.dart';
import 'package:code_factory_app/screens/sign/in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 24),
            child: SizedBox(
              width: 375,
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Botão de voltar
                    SizedBox(
                      width: 375,
                      child: Padding(
                        padding: const EdgeInsets.only(left:15, top: 16,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
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
                          ],
                        ),
                      ),
                    ),

                    //Conteúdo Principal
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 343,
                          child: Image.asset(
                            "assets/images/up.png",
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Register",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                            color: const Color.fromARGB(255, 51, 51, 51),
                            decoration: TextDecoration.none,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          "Crie a sua conta",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.rubik(
                            color: const Color.fromARGB(255, 109, 109, 120),
                            decoration: TextDecoration.none,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),

                        SizedBox(
                          width: 343,

                          child: TextFormField(
                            keyboardType: TextInputType.name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Campo obrigatório";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 190, 186, 179),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Nome",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                            style: GoogleFonts.rubik(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 120, 116, 109),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 16,
                        ),

                        SizedBox(
                          width: 343,
                          child: TextFormField(
                            keyboardType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Campo obrigatório";
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 190, 186, 179),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "E-mail",
                              border: OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(15)),
                              ),
                            ),
                            style: GoogleFonts.rubik(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 120, 116, 109),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 16,
                        ),

                        SizedBox(
                          width: 343,

                          child: TextFormField(
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: !_passwordVisible,
                            // Estado que controlar a visibilidade
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "Campo obrigatório";
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(
                                  // Alterna o ícone com base no estado
                                  _passwordVisible
                                      ? Icons.visibility_off_outlined
                                      : Icons.visibility_outlined,
                                ),
                                onPressed: () {
                                  setState(() {
                                    // Atualiza o estado para alternar a visibilidade
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                              enabledBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Color.fromARGB(255, 190, 186, 179),
                                ),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                                borderSide: BorderSide(
                                  color: Colors.black,
                                ),
                              ),
                              hintText: "Senha",
                              border: const OutlineInputBorder(
                                borderSide: BorderSide(width: 1),
                                borderRadius: BorderRadius.all(Radius.circular(12)),
                              ),
                            ),
                            style: GoogleFonts.rubik(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: const Color.fromARGB(255, 120, 116, 109),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 16,
                        ),

                        // Botão
                        SizedBox(
                          width: 341,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {
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
                                      content: Text("Cadastro realizado com sucesso! Bem-vindo!"),
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
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 227, 86, 42),
                              padding: const EdgeInsets.fromLTRB(32, 16, 32, 16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                            child: Text(
                              // Texto do botão
                              "Register",
                              style: GoogleFonts.rubik(
                                letterSpacing: -0.5,
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(
                          height: 16,
                        ),

                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const SignIn()),
                            );
                          },
                          splashColor: Colors.grey.withOpacity(0.4),  // Ajuste de cor ao clicar
                          highlightColor: Colors.transparent,  // Preenchimento de sombra ao clicar
                          child: Text(
                            "Login",
                            style: GoogleFonts.rubik(
                              color: const Color.fromARGB(255, 120, 116, 109),
                              decoration: TextDecoration.none,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
