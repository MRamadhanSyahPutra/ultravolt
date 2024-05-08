import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ultravolt/widget/Circle.dart';
import 'package:ultravolt/widget/NavbarBotton.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: SafeArea(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  // color: Colors.green,
                  padding: EdgeInsets.only(left: 8, top: 8),
                  child: RichText(
                    text: TextSpan(
                      text: 'WELCOME TO ULTRAVOLT!\n',
                      style: TextStyle(
                        color: Color.fromRGBO(144, 165, 180, 1),
                        fontSize: 11.8,
                      ),
                      children: <InlineSpan>[
                        WidgetSpan(
                          child: SizedBox(height: 27),
                        ),
                        TextSpan(
                          text: 'Perangkat, Kipas Portable!',
                          style: TextStyle(
                            color: Color.fromRGBO(21, 20, 31, 1),
                            fontWeight: FontWeight.bold,
                            fontSize: 15.74,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topRight,
                  padding: EdgeInsetsDirectional.only(end: 8),
                  // color: Colors.cyan,
                  child: Stack(
                    children: <Widget>[
                      IconButton(
                        onPressed: () {
                          context.go('/notif');
                        },
                        icon: Icon(Icons.notifications_none),
                      ),
                      Positioned(
                        right: 10,
                        top: 10,
                        child: Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 10,
                            minHeight: 10,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 1,
          ),
          //Wave
          Flexible(
            fit: FlexFit.loose,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Stack(
                children: <Widget>[
                  WaveWidget(
                    config: CustomConfig(
                      //Mengatur ColorGradien yang memiliki 3 lapisan
                      gradients: [
                        [
                          Color.fromRGBO(158, 213, 253, 1),
                          Color.fromRGBO(158, 213, 253, 1)
                        ],
                        [
                          Color.fromRGBO(158, 213, 253, 1),
                          Color.fromRGBO(158, 213, 253, 1)
                        ],
                        [
                          Color.fromRGBO(169, 226, 255, 1),
                          Color.fromRGBO(169, 226, 255, 1)
                        ],
                      ],
                      durations: [35000, 19440, 10800],
                      //Mengatur gelombang lapisan 1, 2 dan 3
                      heightPercentages: [0.20, 0.23, 0.25],
                      blur: MaskFilter.blur(BlurStyle.solid, 10),
                      gradientBegin: Alignment.bottomLeft,
                      gradientEnd: Alignment.topRight,
                    ),
                    waveAmplitude: 0,
                    size: Size(
                      double.infinity,
                      MediaQuery.of(context).size.height / 3.5,
                    ),
                  ),
                  Positioned(
                    top: 88,
                    left: 13.5,
                    child: Text(
                      'Status Pengisian Daya',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 17.5,
                        fontWeight: FontWeight.bold,
                        color: Colors.white70,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 121.8,
                    left: 13.5,
                    child: Text(
                      'Terhubung',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 23.5,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(21, 27, 31, 1),
                      ),
                    ),
                  ),
                  Positioned(
                      top: 129.8,
                      left: 132.5,
                      child: Icon(
                        Icons.flash_on,
                        color: Color.fromRGBO(0, 234, 122, 1),
                        size: 30,
                      )),
                  Positioned(
                    top: 64,
                    left: 208,
                    child: CircleProgress(),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          //Bagian Column Voltage & Sisa Baterai
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(31, 37, 68, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: FloatingActionButton(
                    backgroundColor: Color.fromRGBO(31, 37, 68, 1),
                    onPressed: () {
                      context.go('/voltage');
                    },
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 30,
                          left: 20,
                          child: Text(
                            'Voltage',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 20),
                          ),
                        ),
                        Positioned(
                          top: 68.5,
                          left: 20,
                          child: Text(
                            '4.0',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 88,
                          left: 71,
                          child: Text(
                            'mV',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(31, 37, 68, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: FloatingActionButton(
                    backgroundColor: Color.fromRGBO(31, 37, 68, 1),
                    onPressed: () {},
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 30,
                          left: 8.7,
                          child: Text(
                            'Perkiraan Sisa Pakai',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 52.5,
                          left: 8.7,
                          child: Text(
                            'Baterai*',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 30,
                          left: 8.7,
                          child: Text(
                            'Perkiraan Sisa Pakai',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 83,
                          left: 12,
                          child: Text(
                            '10',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 95,
                          left: 45.9,
                          child: Text(
                            'Jam',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 83,
                          left: 83.9,
                          child: Text(
                            '15',
                            style: TextStyle(
                                color: Color.fromRGBO(255, 255, 255, 1),
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 95,
                          left: 117.5,
                          child: Text(
                            'Menit',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //Text Perangkat
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Perangkat',
                  style: TextStyle(
                    fontSize: 24.8,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 25.8,
          ),
          //Bagian Column Kipas Portable 1
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Container(
                  width: 78,
                  height: 78,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: FloatingActionButton(
                    backgroundColor: Color.fromRGBO(31, 37, 68, 1),
                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(55),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 30,
                          left: 30,
                          child: Image.asset('assets/battery_full.png'),
                        ),
                        Positioned(
                          top: 15,
                          left: 70,
                          child: Text(
                            'Kipas Portable 1',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 38.8,
                          left: 70,
                          child: Text(
                            'IP - Baterai Kipas 1',
                            style: TextStyle(
                              color: Color.fromRGBO(124, 127, 144, 1),
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 62,
          ),
          //Bagian Navbar Botton
          NavbarBotton(),
        ],
      ),
    );
  }
}
