import 'package:flutter/material.dart';
import 'dart:math';

class CircleProgress extends StatefulWidget {
  @override
  _CircleProgressState createState() => _CircleProgressState();
}

class _CircleProgressState extends State<CircleProgress> {
  //Presentase circle battery dalam bentuk persen
  double percentage = 0.7;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          //jika presentase diawal value nya 0.7 maka akan menampilkan 1.0, jika tidak maka 0.7
          percentage = percentage == 0.7 ? 1.0 : 0.7;
        });
      },
      child: Container(
        width: 148,
        height: 148,
        child: CustomPaint(
          foregroundPainter: CirclePainter(percentage),
          child: Center(
            child: Text(
              '${(percentage * 100).round()}%',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}

class CirclePainter extends CustomPainter {
  double currentProgress;

  CirclePainter(this.currentProgress);

  @override
  void paint(Canvas canvas, Size size) {
    Paint completeArc = Paint()
      ..strokeWidth = 10
      ..color = Color.fromRGBO(31, 37, 68, 1)
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    Paint outerCircle = Paint()
      ..strokeWidth = 10
      ..color = Color.fromRGBO(214, 219, 237, 1)
      ..style = PaintingStyle.stroke;

    Offset center = Offset(size.width / 2, size.height / 2);
    double radius =
        min(size.width / 2, size.height / 2) - outerCircle.strokeWidth / 2;

    canvas.drawCircle(center, radius, outerCircle);

    double angle = 2 * pi * (currentProgress);

    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        angle, false, completeArc);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
