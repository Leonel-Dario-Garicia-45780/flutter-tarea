/* import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tarea/ModalMenu.dart';

class HomePrincipal extends StatefulWidget {
  const HomePrincipal({super.key});
  @override
  State<HomePrincipal> createState() => _HomePrincipalState();
}

class _HomePrincipalState extends State<HomePrincipal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Tienda",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mercado libre Colombia"),
          centerTitle: true,
          backgroundColor: Colors.amber[700],
          foregroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              ModalMenu(context);
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        backgroundColor: Colors.green[50],
      ),
    );
  }
}
 */


import 'package:flutter/material.dart';
import 'menu1.dart'; // Suponiendo que estos archivos contienen la lógica de tus widgets de menú
import 'menu2.dart'; // Suponiendo que estos archivos contienen la lógica de tus widgets de menú

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key); // Constructor constante

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi aplicación'),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const MenuModalWidget(), // Usa el nombre de clase real de menu1.dart
              );
            },
            icon: Icon(Icons.menu),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const AnotherMenuModalWidget(), // Usa el nombre de clase real de menu2.dart
              );
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      body: Center(
        child: Text('Contenido de la página principal'),
      ),
    );
  }
}