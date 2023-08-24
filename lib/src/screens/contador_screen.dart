import 'package:flutter/material.dart';

class ContadorScreen extends StatefulWidget {
  const ContadorScreen({Key? key}) : super(key: key);

  @override
  _ContadorScreenState createState() => _ContadorScreenState();
}

class _ContadorScreenState extends State<ContadorScreen> {
  int contador = 65;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Challenge #1 - Dayne Hidalgo'),
        centerTitle: true,
        
      ),
      body: crearBody(),
      floatingActionButton: crearFABs(),
    );
  }

  Widget crearBody() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "ABCEDARIO:",
            style: TextStyle(fontSize: 30, fontFamily: 'MiFuente'),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(String.fromCharCode(contador),
              style: const TextStyle(fontSize: 70, fontFamily: 'MiFuente'))
        ],
      ),
    );
  }

  Widget crearFABs() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: resetear,
          child: const Icon(Icons.update),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: reducir,
          child: const Icon(Icons.remove),
        ),
        const SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: adicionar,
          child: const Icon(Icons.add),
        ),
      ],
    );
  }

  void adicionar() => setState(() {
        contador++;
        if (contador>90){
          contador = 65;
        }
        
      });

  void reducir() => setState(() {
        contador--;
        if (contador<65){
          contador = 90;
        }
      });

  void resetear() => setState(() {
        contador = 65;
      });
}
