import 'dart:math';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';

/// create by tale
/// contact me by email: 418617870@qq.com
/// description: 1.style、isAntiAlias和color

class Sample37 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paint的基础属性'),
      ),
      body: Container(
        child: CustomPaint(
          // 这是我们能画的地方，使用CustomPaint
          painter: Sample3Painter71(),
        ),
      ),
    );
  }
}

/// 定义我们的画笔
class Sample3Painter71 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final colorStops = [1 / 3.0, 2 / 3.0, 1.0];
    final colors = [Colors.red, Colors.green, Colors.blue];

    /// 创建画笔 设置shader
    final paint = Paint()..style = PaintingStyle.fill;
    paint.shader = ui.Gradient.sweep(
      Offset(80 + 150.0 * 0, 80),
      colors,
      colorStops,
      TileMode.clamp,
      pi / 2,
      pi,
    );
    canvas.drawCircle(
      Offset(80 + 150.0 * 0, 80),
      50,
      paint,
    );
    paint.shader = ui.Gradient.sweep(
      Offset(80 + 150.0 * 1, 80),
      colors,
      colorStops,
      TileMode.repeated,
      pi / 2,
      pi,
    );
    canvas.drawCircle(
      Offset(80 + 150.0 * 1, 80),
      50,
      paint,
    );
    paint.shader = ui.Gradient.sweep(
      Offset(80 + 150.0 * 0, 80 + 150.0),
      colors,
      colorStops,
      TileMode.mirror,
      pi / 2,
      pi,
    );
    canvas.drawCircle(
      Offset(80 + 150.0 * 0, 80 + 150.0),
      50,
      paint,
    );

    paint.shader = ui.Gradient.sweep(
      Offset(80 + 150.0 * 1, 80 + 150.0),
      colors,
      colorStops,
      TileMode.clamp,
    );
    canvas.drawCircle(
      Offset(80 + 150.0 * 1, 80 + 150.0),
      50,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
