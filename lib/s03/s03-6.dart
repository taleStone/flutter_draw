import 'dart:ui' as ui;

import 'package:flutter/material.dart';

/// create by tale
/// contact me by email: 418617870@qq.com
/// description: 1.style、isAntiAlias和color

class Sample36 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paint的基础属性'),
      ),
      body: Container(
        child: CustomPaint(
          // 这是我们能画的地方，使用CustomPaint
          painter: Sample3Painter61(),
        ),
      ),
    );
  }
}

/// 定义我们的画笔
class Sample3Painter61 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // 用于指定颜色个数,需要和colors个数相同
    final colorStops = [1 / 3.0, 2 / 3.0, 1.0];
    final colors = [Colors.red, Colors.green, Colors.blue];

    /// 创建画笔 设置shader
    final paint = Paint()..style = PaintingStyle.fill;
    paint.shader = ui.Gradient.radial(
      Offset(80 + 150.0 * 0, 80),
      25,
      colors,
      colorStops,
      TileMode.clamp,
    );
    canvas.drawCircle(
      Offset(80 + 150.0 * 0, 80),
      50,
      paint,
    );

    paint.shader = ui.Gradient.radial(
      Offset(80 + 150.0 * 1, 80),
      25,
      colors,
      colorStops,
      TileMode.repeated,
    );
    canvas.drawCircle(
      Offset(80 + 150.0 * 1, 80),
      50,
      paint,
    );

    paint.shader = ui.Gradient.radial(
      Offset(80 + 150.0 * 0, 180),
      25,
      colors,
      colorStops,
      TileMode.mirror,
    );
    canvas.drawCircle(
      Offset(80 + 150.0 * 0, 180),
      50,
      paint,
    );
    paint.shader = ui.Gradient.radial(
      Offset(80 + 150.0 * 1, 80 + 100.0),
      25,
      colors,
      colorStops,
      TileMode.mirror,
      null,
      Offset(80 + 150.0 * 1 - 5, 180 - 5.0),
      10,
    );
    canvas.drawCircle(
      Offset(80 + 150.0 * 1, 180),
      50,
      paint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
