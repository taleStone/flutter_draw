import 'package:flutter/material.dart';

/// create by tale
/// contact me by email: 418617870@qq.com
/// description: 定义一个画布

class Sample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter绘制的基础实例'),
      ),
      body: Container(
        child: CustomPaint(
          // 这是我们能画的地方，使用CustomPaint
          painter: Sample2Painter(),
        ),
      ),
    );
  }
}

/// 定义我们的画笔
class Sample2Painter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// 创建画笔 并设置颜色
    final paint = Paint()..color = Colors.red;
    Path path = Path();

    /// 画一条红色的线
    canvas.drawLine(Offset.zero, Offset(100, 100), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
