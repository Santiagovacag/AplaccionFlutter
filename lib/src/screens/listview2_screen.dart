import 'package:componentes/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListView2Screen extends StatelessWidget {
  final options = const [
    'Es un framework que nos permite crear aplicaciones multiplataforma de forma nativa.',
    'El framework, a pesar de estar creado en C++, utiliza un único lenguaje llamado Dart para crear aplicaciones para todas las plataformas. Al estar su núcleo creado con C++ permite que nuestras aplicaciones sean rápidas.',
    'Tiene elementos ya predefinidos de interfaz de usuario que nos facilitan el desarrollo como botones, barras de navegación, etc.',
    'Más rápido y eficiente que Ionic o React Native',
    'Es un framework que tiene la cualidad de Hot reload lo que permite que mientras ejecuta la aplicación en el emulador, los cambios se ven al instante en ella.',
    'Tiene elementos ya predefinidos de interfaz de usuario que nos facilitan el desarrollo como botones, barras de navegación, etc.',
    'Posee un motor propio de renderizado de aplicaciones basado en Skia, lo que implica que no utiliza las Web Views ni los OEM Widgets de los dispositivos ya que posee sus propias librerías de widgets.',
    'Además, es el framework oficial para Fucshia el primer sistema operativo desarrollado por Google que no está basado en Linux/Unix.',
  ];

  const ListView2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Características de Flutter'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.check, color: AppTheme.primary),
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios_outlined,
              color: AppTheme.primary),
          onTap: () => print(options[index]),
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
