import 'package:flutter/material.dart';

import 'app/tela_inicial.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sorteio Hoje',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: TelaInicial(),
    );
  }
}

