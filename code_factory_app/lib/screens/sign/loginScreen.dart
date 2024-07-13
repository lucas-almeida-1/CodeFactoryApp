import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  bool isObscured=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          alignment: Alignment.center,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Image(image: ExactAssetImage("assets/images/imgLogin.png")),
              const Text("Login",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              SizedBox(
                width: 343,
                height: 53,
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo vazio';
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
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                    )),
              ),
              SizedBox(
                width: 343,
                height: 53,
                child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Campo vazio';
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
                        });}, icon: isObscured? const Icon(Icons.visibility):const Icon(Icons.visibility_off)),
                      hintText: "Senha",
                      fillColor: Colors.white,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                    )),
              ),
              Container(
                  width: 343,
                  height: 53,
                  decoration: ShapeDecoration(
                      color: const Color.fromARGB(255, 227, 86, 42),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16))),
                  child: TextButton(
                    onPressed: (){ print("Botão precionado,"+email.text+" "+senha.text);},
                    child: const Text("Log in",style: TextStyle(fontSize: 16,color: Colors.white)),
                  )
              ),
              InkWell(
                onTap: (){print("tocou aqui");},
                child: const Text("Registrar-se"),
              ),
            ],
          ),

        ));
  }
}
