import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:trilaapp/services/gerador_numero_aleatorio_service.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var numeroGerado = 0;
  var quantidadeCliques = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App', style: GoogleFonts.doHyeon()),
      ),
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
              child: Text ("Quantidade de cliques:$quantidadeCliques" ,
                  style: GoogleFonts.archivoBlack(fontSize: 20))),
          Center(
              child: Text("Número gerado: $numeroGerado",
                  style: GoogleFonts.archivoBlack(fontSize: 20))),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add_box_rounded),
          onPressed: () {
            setState(() {
              quantidadeCliques = quantidadeCliques + 1;
              numeroGerado =
                  GeradorNumeroAleatorioService.gerarNumeroAleatorio(500);
            });
          }),
    );
  }
}
