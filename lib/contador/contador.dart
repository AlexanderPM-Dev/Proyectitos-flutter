import 'package:flutter/material.dart';

class Contador extends StatefulWidget {
  static String name = "Contador";
  const Contador({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
  TextStyle estiloTexto = TextStyle(fontSize: 25);
  int conteo = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de suma y resta"),
        centerTitle: true,
        elevation: double.infinity,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Numero de clicks",
              style: estiloTexto,
            ),
            Text(
              '$conteo',
              style: estiloTexto,
            ),
          ],
        ),
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.plus_one_sharp),
      //   onPressed: () {

      //     // mirar los cambios real utilizamos el setstate
      //     setState(() {
      //     print("hola mundo");
      //       conteo++;
      //     });

      //   },
      // ),
      floatingActionButton: _crearBotones(),
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 30.0,
        ),
        FloatingActionButton(
          onPressed: () {
            _agregar();
          },
          child: const Icon(Icons.plus_one_sharp),
        ),
        Expanded(child: const SizedBox()),
        FloatingActionButton(
          onPressed: () {
            _resetear();
          },
          child: const Icon(Icons.exposure_zero_outlined),
        ),
        const SizedBox(
          width: 5.0,
        ),
        FloatingActionButton(
          onPressed: () {
            _eliminar();
          },
          child: const Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }

  void _agregar() {
    setState(() {
      conteo++;
    });
  }

  void _eliminar() {
    setState(() {
      conteo--;
    });
  }

  void _resetear() {
    setState(() {
      conteo = 0;
    });
  }
}
