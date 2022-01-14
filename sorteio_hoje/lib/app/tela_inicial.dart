import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sorteio_hoje/app/tela_resultado.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quantnumEC = TextEditingController();
    final minEC = TextEditingController();
    final maxEC = TextEditingController();

    int numeroAle({required int min, required int max}) =>
        min + Random().nextInt(max - min + 1);

    List<int> listaNumeros(int quantidade,
        {required int min, required int max}) {
      final numeros = Set<int>();

      while (numeros.length < quantidade) {
        final numero = numeroAle(min: min, max: max);
        numeros.add(numero);
      }
      return List.of(numeros);
    }

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(26),
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Image.asset(
                'assets/imagem/sorteiohojelogo.png',
                width: 10,
              ),
            ),
            SizedBox(width: 30),
            Row(
              children: [
                Text(
                  'Sortear',
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                      controller: quantnumEC,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          hintText: 'Quantiade',
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.orange),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.orangeAccent),
                            borderRadius: BorderRadius.circular(8),
                          ))),
                ),
                SizedBox(width: 10),
                Text(
                  'Numeros',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        'Entre',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                            controller: minEC,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: 'Mínimo',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.orangeAccent),
                                  borderRadius: BorderRadius.circular(8),
                                ))),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Row(
                    children: [
                      Text(
                        'e',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: TextFormField(
                            controller: maxEC,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: 'Máximo',
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.orangeAccent),
                                  borderRadius: BorderRadius.circular(8),
                                ))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  elevation: 0,
                ),
                onPressed: () {
                  if (int.parse(quantnumEC.text) <=
                      int.parse(maxEC.text) - int.parse(minEC.text)) {
                    final lista = listaNumeros(int.parse(quantnumEC.text),
                        min: int.parse(minEC.text), max: int.parse(maxEC.text));
                    abrirDiaolgo(context, lista);
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        duration: Duration(seconds: 4),
                        content: Text(
                            'Numeros digitados são inválidos, verifique se a quantidade é menor ou igual ao intervalo de numeros sortados')));
                  }
                },
                child: Text(
                  'Sortear!',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
