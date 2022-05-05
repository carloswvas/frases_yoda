import 'dart:math';

import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _frases = [
    'Guerras Não Fazem Ninguém Maior',
    'Um Jedi usa a força para conhecimento e defesa, nunca para ataque',
    'Raiva, medo, agressão. Ao lado sombrio elas pertencem',
    'Você deve desaprender o que aprendeu',
    'Sempre em movimento é o Futuro',
    'Fazer ou não fazer. Tentativa não há'
  ];
  var _texto = 'Clique no botão para gerar uma frase.';

  _gerarFrase() {
    var numeroRandom = Random().nextInt(_frases.length);
    setState(() {
      _texto = _frases[numeroRandom];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mestre Yoda!'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('../images/yoda.png'),
                  height: 300.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    _texto,
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 5,
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () => _gerarFrase(),
                    child: const Text(
                      'Nova Frase',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(primary: Colors.green)),
              ]),
        ),
      ),
    );
  }
}
