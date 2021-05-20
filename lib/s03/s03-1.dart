import 'package:flutter/material.dart';

/// create by tale
/// contact me by email: 418617870@qq.com
/// description: 1.style、isAntiAlias和color

class Sample31 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paint的基础属性'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Container(
              child: CustomPaint(
                // 这是我们能画的地方，使用CustomPaint
                painter: Sample3Painter11(),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: CustomPaint(
                // 这是我们能画的地方，使用CustomPaint
                painter: Sample3Painter12(),
              ),
            ),
          )
        ],
      ),
    );
  }
}

/// 定义我们的画笔
class Sample3Painter11 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// 创建画笔 并设置颜色
    final paint = Paint()
      ..color = Colors.red // 定义颜色
      ..style = PaintingStyle.stroke // 定义样式
      ..strokeWidth = 50
      ..isAntiAlias = true; // 是否抗锯齿

    /// 画个圆形
    canvas.drawCircle(Offset(100, 100), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class Sample3Painter12 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// 创建画笔 并设置颜色
    final paint = Paint()
      ..color = Colors.blue // 定义颜色
      ..style = PaintingStyle.fill // 定义样式
      ..strokeWidth = 50
      ..isAntiAlias = false; // 是否抗锯齿

    /// 画个圆形
    canvas.drawCircle(Offset(100, 100), 50, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
