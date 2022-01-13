import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final quantnumEC = TextEditingController(text: '1');
    final minEC = TextEditingController(text: '0');
    final maxEC = TextEditingController(text: '400');
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
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.orange),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                width: 3, color: Colors.orangeAccent),
                            borderRadius: BorderRadius.circular(15),
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
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.orangeAccent),
                                  borderRadius: BorderRadius.circular(15),
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
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.orange),
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 3, color: Colors.orangeAccent),
                                  borderRadius: BorderRadius.circular(15),
                                ))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
