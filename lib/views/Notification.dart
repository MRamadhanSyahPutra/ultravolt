import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ultravolt/widget/NavbarBotton.dart';

class Notif extends StatefulWidget {
  const Notif({Key? key}) : super(key: key);

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
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
                'Notifikasi',
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(50),
            ),
            child: FloatingActionButton(
              onPressed: () {
                context.go('/notif');
              },
              backgroundColor: Color.fromARGB(255, 217, 234, 243),
              hoverColor: Color.fromARGB(255, 217, 234, 243),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  _buildNotification(
                    icon: Icons.devices,
                    title: 'Perangkat telah tersambung',
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(50),
            ),
            child: FloatingActionButton(
              onPressed: () {
                context.go('/notif');
              },
              backgroundColor: Color.fromARGB(255, 217, 234, 243),
              hoverColor: Color.fromARGB(255, 217, 234, 243),
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  _buildNotification(
                    icon: Icons.battery_full,
                    title: 'Baterai telah penuh terisi',
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 350,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(50),
            ),
            child: FloatingActionButton(
              backgroundColor: Color.fromARGB(255, 217, 234, 243),
              hoverColor: Color.fromARGB(255, 217, 234, 243),
              onPressed: () {
                context.go('/notif');
              },
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              child: Row(
                children: [
                  SizedBox(width: 20),
                  _buildNotification(
                    icon: Icons.add_circle,
                    title: 'Perangkat baru telah ditambahkan',
                  ),
                ],
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 10),
          ),
          SizedBox(
            height: 370,
          ),
          NavbarBotton(),
        ],
      ),
    );
  }
}

Widget _buildNotification({required IconData icon, required String title}) {
  return Row(
    children: [
      Icon(icon),
      SizedBox(width: 5),
      Text(title),
    ],
  );
}
