import 'package:componentes/src/theme/app_theme.dart';
import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Logotipo'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              backgroundColor: AppTheme.primaryAcent,
              child: const Text('SV'),
            ),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 200,
          backgroundImage: NetworkImage(
              'https://culturacientifica.utpl.edu.ec/wp-content/uploads/2018/05/Logo-UTPL.jpg'),
        ),
      ),
    );
  }
}
