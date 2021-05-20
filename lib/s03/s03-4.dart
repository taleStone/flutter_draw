import 'package:flutter/material.dart';

/// create by tale
/// contact me by email: 418617870@qq.com
/// description: 1.style、isAntiAlias和color

class Sample34 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paint的基础属性'),
      ),
      body: Container(
        child: CustomPaint(
          // 这是我们能画的地方，使用CustomPaint
          painter: Sample3Painter41(),
        ),
      ),
    );
  }
}

/// 定义我们的画笔
class Sample3Painter41 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// 创建画笔 并设置颜色
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..color = Colors.blue
      ..strokeWidth = 20;
    final path = Path();
    path.moveTo(50, 50);
    path.lineTo(50, 150);
    path.relativeLineTo(100, -50);
    canvas.drawPath(
      path,
      paint
        ..strokeJoin = StrokeJoin.miter
        ..strokeMiterLimit = 2,
    );

    path.reset();
    path.moveTo(50 + 150.0, 50);
    path.lineTo(50 + 150.0, 150);
    path.relativeLineTo(100, -100);
    canvas.drawPath(
      path,
      paint
        ..strokeJoin = StrokeJoin.miter
        ..strokeMiterLimit = 2,
    );

    path.reset();
    path.moveTo(50, 50 + 200.0);
    path.lineTo(50, 150 + 200.0);
    path.relativeLineTo(100, -50);
    canvas.drawPath(
      path,
      paint
        ..strokeJoin = StrokeJoin.miter
        ..strokeMiterLimit = 4,
    );

    path.reset();
    path.moveTo(50 + 150.0, 50 + 200.0);
    path.lineTo(50 + 150.0, 150 + 200.0);
    path.relativeLineTo(100, -100);
    canvas.drawPath(
      path,
      paint
        ..strokeJoin = StrokeJoin.miter
        ..strokeMiterLimit = 4,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
