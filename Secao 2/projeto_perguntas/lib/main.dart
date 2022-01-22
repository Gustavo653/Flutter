import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  void responder() {
    print('Pergunta Respondida!');
  }

  void Function() funcaoQueRetornaUmaOutraFuncao() {
    return () {
      print('Pergunta Respondida #03!');
    };
  }

  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é sua cor favorita?',
      'Qual é seu animal favorito?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[0]),
            ElevatedButton(onPressed: responder, child: Text('Reposta 1')),
            ElevatedButton(
                onPressed: () {
                  print('Resposta 2 foi selecionada!');
                },
                child: Text('Reposta 2')),
            ElevatedButton(
                onPressed: funcaoQueRetornaUmaOutraFuncao(),
                child: Text('Reposta 3'))
          ],
        ),
      ),
    );
  }
}
