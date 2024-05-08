import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() => runApp(
      MaterialApp(
        home: Welcome(),
        debugShowCheckedModeBanner: false,
      ),
    );

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Color.fromRGBO(31, 37, 68, 1)),
        child: Center(
          child: Container(
            width: 500,
            height: 500,
            child: FloatingActionButton(
              onPressed: () {
                context.go('/home');
              },
              child: Image.asset(
                'assets/battery.png',
              ),
              backgroundColor: Color.fromRGBO(31, 37, 68, 1),
              hoverColor: Color.fromRGBO(31, 37, 68, 1),
              hoverElevation: 0,
              elevation: 0,
            ),
          ),
        ),
      ),
    );
  }
}
