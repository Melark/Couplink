import 'package:flutter/material.dart';

class PathPainter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CubicPainter(),
    );
  }
}

class CubicPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;
    
    Path path = Path();
    path.cubicTo(size.width / 4 + 10, 3 * size.height / 10 , 3 * size.width / 4, size.height / 12, size.width + 10, size.height / 3);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
    canvas.drawColor(Colors.amber, BlendMode.color);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}