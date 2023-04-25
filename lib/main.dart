import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();
  double resultado = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese el primer número',
              ),
            ),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                hintText: 'Ingrese el segundo número',
              ),
            ),
            Text(
              'Resultado: $resultado',
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double n1 = double.parse(num1Controller.text);
                      double n2 = double.parse(num2Controller.text);
                      resultado = n1 + n2;
                    });
                  },
                  child: Text('SUMAR'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double n1 = double.parse(num1Controller.text);
                      double n2 = double.parse(num2Controller.text);
                      resultado = n1 - n2;
                    });
                  },
                  child: Text('RESTAR'),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double n1 = double.parse(num1Controller.text);
                      double n2 = double.parse(num2Controller.text);
                      resultado = n1 * n2;
                    });
                  },
                  child: Text('MULTIPLICAR'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      double n1 = double.parse(num1Controller.text);
                      double n2 = double.parse(num2Controller.text);
                      resultado = n1 / n2;
                    });
                  },
                  child: Text('DIVIDIR'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}