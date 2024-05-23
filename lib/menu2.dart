import 'package:flutter/material.dart';

class AnotherMenuModalWidget extends StatelessWidget {
  const AnotherMenuModalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('Opción menu 2'),
            onTap: () {
              // Manejar toque de la Opción 4
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Opción 5'),
            onTap: () {
              // Manejar toque de la Opción 5
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Opción 6'),
            onTap: () {
              // Manejar toque de la Opción 6
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
