import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widgets'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          CustomCardType2(
            name: 'Search',
            imageURrl:
                'https://dk2dv4ezy246u.cloudfront.net/widgets/sMgGqgg8VJi_large.jpg',
          ),
          CustomCardType2(
            name: 'Calendario',
            imageURrl:
                'https://www.welovesolo.com/wp-content/uploads/ui/00/p17r6k6r051svc1cl9pn41oml1tql5-details.jpg',
          ),
          CustomCardType2(
            name: 'Calculadora',
            imageURrl:
                'https://cdn.dribbble.com/users/2059305/screenshots/14338898/2.calculator.png',
          ),
        ],
      ),
    );
  }
}
