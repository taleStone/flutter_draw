import 'package:flutter/material.dart';

/// create by tale
/// contact me by email: 418617870@qq.com
/// description: 1.style、isAntiAlias和color

class Sample32 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paint的基础属性'),
      ),
      body: Container(
        child: CustomPaint(
          // 这是我们能画的地方，使用CustomPaint
          painter: Sample3Painter21(),
        ),
      ),
    );
  }
}

/// 定义我们的画笔
class Sample3Painter21 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// 创建画笔 并设置颜色
    final paint = Paint()
      ..color = Colors.red // 定义颜色
      ..style = PaintingStyle.stroke // 定义样式
      ..strokeWidth = 10; //

    /// 画三条不同类型的线
    canvas.drawLine(
      Offset(50, 50),
      Offset(50, 150),
      paint..strokeCap = StrokeCap.butt,
    );
    canvas.drawLine(
      Offset(50 + 50.0, 50),
      Offset(50 + 50.0, 150),
      paint..strokeCap = StrokeCap.round,
    );
    canvas.drawLine(
      Offset(50 + 50.0 * 2, 50),
      Offset(50 + 50.0 * 2, 150),
      paint..strokeCap = StrokeCap.square,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
