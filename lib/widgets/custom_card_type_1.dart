import 'package:flutter/material.dart';

import 'package:componentes/src/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.album,
              color: AppTheme.primary,
            ),
            title: Text('Widgets'),
            subtitle: Text(
                'Los widgets son la jerarquía de clase central en el marco Flutter. Un widget es una descripción inmutable de parte de una interfaz de usuario. Los widgets se pueden inflar en elementos, que administran el árbol de representación subyacente.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('ok'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
