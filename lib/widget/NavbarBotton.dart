import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _LimbahBattreyUrl = Uri.parse(
    'https://www.universaleco.id/blog/detail/bahaya-limbah-baterai-bekas-jika-tidak-terkelola-dengan-baik/141');

void main() => runApp(
      MaterialApp(
        home: NavbarBotton(),
      ),
    );

class NavbarBotton extends StatefulWidget {
  const NavbarBotton({super.key});

  @override
  State<NavbarBotton> createState() => _NavbarBottonState();
}

class _NavbarBottonState extends State<NavbarBotton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Expanded(
          child: Container(
            height: 79.2,
            margin: EdgeInsets.symmetric(horizontal: 38.5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(169, 225, 253, 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(169, 225, 253, 1),
                  hoverElevation: 0,
                  elevation: 0,
                  onPressed: () {
                    //perpindahan halaman dengan mengganti halaman ke home
                    context.pushReplacement('/home');
                  },
                  child: Image.asset(
                    'assets/Beranda.png',
                    height: 45,
                  ),
                ),
                Container(
                  height: 74.4,
                  width: 74.4,
                  child: FloatingActionButton(
                    backgroundColor: Color.fromRGBO(31, 37, 68, 1),
                    hoverElevation: 0,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {
                      //Perpindahan ke halaman website
                      _launchUrl();
                    },
                    child: Image.asset(
                      'assets/Battery_Logo_CInta_Negeri TRansparent.png',
                    ),
                  ),
                ),
                FloatingActionButton(
                  backgroundColor: Color.fromRGBO(169, 225, 253, 1),
                  hoverElevation: 0,
                  elevation: 0,
                  onPressed: () {
                    context.pushReplacement('/voltage');
                  },
                  child: Image.asset('assets/Analisis.png'),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_LimbahBattreyUrl)) {
    throw Exception('Tidak terhubung $_LimbahBattreyUrl');
  }
}
