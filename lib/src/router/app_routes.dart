import 'package:componentes/models/model.dart';
import 'package:flutter/material.dart';

import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOptions>[
    // MenuOptions(route: 'home', name: 'Home Screen', screen:const HomeScreen(), icon: Icons.home),
    MenuOptions(
        route: 'listview1',
        name: '¿Qué es Flutter?',
        screen: const ListView1Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'listview2',
        name: 'Características de Flutter',
        screen: const ListView2Screen(),
        icon: Icons.list),
    MenuOptions(
        route: 'alerts',
        name: 'Desarrollo para Android & IOS',
        screen: const AlertScreen(),
        icon: Icons.phone_android),
    MenuOptions(
        route: 'card',
        name: 'Widgets',
        screen: const CardScreen(),
        icon: Icons.widgets_sharp),
    MenuOptions(
        route: 'avatar',
        name: 'Logotipo circular',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_outlined),
    MenuOptions(
        route: 'animated',
        name: 'Figuras Random',
        screen: const AnimatedScreen(),
        icon: Icons.play_circle_outline_rounded),
    MenuOptions(
        route: 'inputs',
        name: 'Formulario',
        screen: const InputsScreen(),
        icon: Icons.input_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> approutes = {};
    approutes.addAll({'home': (BuildContext context) => const HomeScreen()});

    for (final option in menuOptions) {
      approutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return approutes;
  }

  // static Map<String, Widget Function(BuildContext)> routes = {
  //   'home': (context) => const HomeScreen(),
  //   'listview1': (context) => const ListView1Screen(),
  //   'listview2': (context) => const ListView2Screen(),
  //   'alert': (context) => const AlertScreen(),
  //   'card': (context) => const CardScreen(),
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ListView1Screen(),
    );
  }
}
