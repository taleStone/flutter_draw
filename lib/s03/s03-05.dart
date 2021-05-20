import 'dart:ui' as ui;

import 'package:flutter/material.dart';

/// create by tale
/// contact me by email: 418617870@qq.com
/// description: 1.style、isAntiAlias和color

class Sample35 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paint的基础属性'),
      ),
      body: Container(
        child: CustomPaint(
          // 这是我们能画的地方，使用CustomPaint
          painter: Sample3Painter51(),
        ),
      ),
    );
  }
}

/// 定义我们的画笔
class Sample3Painter51 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // 用于指定颜色个数,需要和colors个数相同
    final colorStops = [1 / 3.0, 2 / 3.0, 1.0];
    final colors = [Colors.red, Colors.green, Colors.blue];

    /// 创建画笔 设置shader
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 100
      ..shader =
          ui.Gradient.linear(Offset(0, 0), Offset(200, 0), colors, colorStops);

    canvas.drawLine(Offset(50, 150), Offset(250, 150), paint);

    // paint.shader =
    //     ui.Gradient.radial(Offset(300, 300), 100, colors, colorStops);
    // canvas.drawLine(Offset(50, 150), Offset(250, 150), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
