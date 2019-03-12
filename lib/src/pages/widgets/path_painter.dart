import 'package:flutter/material.dart';

class BackgroundPainter extends StatelessWidget {
  Widget child;

  BackgroundPainter({this.child});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: TopWavePainter(),
      child: child,
    );
  }
}

class TopWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Gradient gradient = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      stops: [0.01, 0.02, 0.3, 0.5, 0.7],
      colors: [
        Color(0xedDB354B),
        Color(0xeeDB354B),
        Color(0xffDB354B),
        Color(0xffBF1F48),
        Color(0xff950044),
      ],
    );

    Rect rect = Rect.fromLTRB(0, 0, size.width * 0.5, size.height / 2);

    Paint paint = Paint()..shader = gradient.createShader(rect);

    Path path = Path();
    path.lineTo(0, size.height / 4);
    path.cubicTo(size.width / 3, size.height / 4, size.width / 2.2,
        size.height / 2, size.width, 3 * size.height / 5);
    path.lineTo(size.width, 0);
    path.close();

    canvas.drawShadow(path, Colors.black, 2.0, false);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
