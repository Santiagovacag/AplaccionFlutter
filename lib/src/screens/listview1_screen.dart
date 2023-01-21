import 'package:componentes/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  final options = const [
    'Flutter es un framework propiedad de Google que permite crear aplicaciones multiplataforma de forma nativa en el lenguaje Dart.',
    'Este framework es un SDK (Software Development Kit) que incluye librerías, elementos de UI y herramientas de testeo para que nuestra aplicación sea fácil y eficiente.',
  ];

  const ListView1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('¿Qué es Flutter?'),
        ),
        body: ListView(
          children: [
            ...options
                .map(
                  (e) => ListTile(
                    leading: const Icon(Icons.arrow_forward,
                        color: AppTheme.primary),
                    title: Text(e),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: AppTheme.primary),
                    onTap: () => print('clic'),
                  ),
                )
                .toList(),
          ],
        ));
  }
}
