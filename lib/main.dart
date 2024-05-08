import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ultravolt/views/Home.dart';
import 'package:ultravolt/views/Notification.dart';
import 'package:ultravolt/views/Voltage.dart';
import 'package:ultravolt/views/welcome.dart';

void main() => runApp(
      MaterialApp(
        home: Router(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Router extends StatefulWidget {
  const Router({super.key});

  @override
  State<Router> createState() => _RouterState();
}

class _RouterState extends State<Router> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }

  //Management routing dengan menggunakan library Gorouter
  final GoRouter _router = GoRouter(routes: [
    GoRoute(path: '/', builder: (context, state) => const Welcome(), routes: [
      GoRoute(path: 'home', builder: (context, state) => Home()),
      GoRoute(path: 'notif', builder: (context, state) => Notif()),
      GoRoute(path: 'voltage', builder: (context, state) => Voltage()),
    ])
  ]);
}
