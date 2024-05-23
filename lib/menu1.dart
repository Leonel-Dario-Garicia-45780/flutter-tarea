import 'package:flutter/material.dart';

class MenuModalWidget extends StatelessWidget {
  const MenuModalWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            title: Text('Opción  menu 1'),
            onTap: () {
              // Manejar toque de la Opción 1
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Opción 2'),
            onTap: () {
              // Manejar toque de la Opción 2
              Navigator.pop(context);
            },
          ),
          ListTile(
            title: Text('Opción 3'),
            onTap: () {
              // Manejar toque de la Opción 3
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
