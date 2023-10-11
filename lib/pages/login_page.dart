import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 243, 243, 243),
          body: SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 70,
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    color: const Color.fromARGB(255, 215, 221, 221),
                    child: const Icon(
                      Icons.person,
                      size: 150,
                      color: Colors.greenAccent,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    width: double.infinity,
                    height: 30,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      children: [
                        Expanded( flex:2, child:Text('Informe o seu email:')),
                       Expanded( flex: 3, child: Text('Email')),
                      ],
                    ),
                  ),
              
                  Container(
                    width: double.infinity,
                    height: 30,
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: const Row(
                      children: [
                        Expanded(
                          flex:2,child: Text('Informe a sua senha:')),
                        Expanded(flex: 3, child: Text('Senha')),
                      ],
                    ),
                  ),
                  Expanded(child: Container()),
                  Container(
                    width: double.infinity,
                    color: Color.fromARGB(255, 74, 195, 120),
                    height: 30,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Entrar'),
                  ),
                  Container(
                    height: 30,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(horizontal: 30),
                    child: Text('Cadastre-se'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ))),
    );
  }
}
