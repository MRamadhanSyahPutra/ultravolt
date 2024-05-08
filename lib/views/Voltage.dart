import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ultravolt/widget/NavbarBotton.dart';
import 'package:ultravolt/widget/home/ChartBattery.dart';
import 'package:ultravolt/widget/home/ChartVolt.dart';

void main() => runApp(
      MaterialApp(
        home: Voltage(),
      ),
    );

class Voltage extends StatefulWidget {
  const Voltage({super.key});

  @override
  State<Voltage> createState() => _VoltageState();
}

class _VoltageState extends State<Voltage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: SafeArea(
          child: Row(
            children: <Widget>[
              Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.only(right: 125),
                child: FloatingActionButton(
                  onPressed: () {
                    context.push('/home');
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  backgroundColor: Colors.white,
                  elevation: 0,
                  child: Icon(Icons.arrow_back),
                ),
              ),
              Text(
                'Voltage',
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 48,
          ),
          ChartVolt(),
          SizedBox(
            height: 45,
          ),
          CharBattery(),
          SizedBox(
            height: 40,
          ),
          NavbarBotton(),
        ],
      ),
    );
  }
}
