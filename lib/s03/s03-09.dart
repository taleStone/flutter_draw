import 'dart:ui' as ui;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Sample39 extends StatefulWidget {
  @override
  _PaperState createState() => _PaperState();
}

class _PaperState extends State<Sample39> {
  ui.Image image;

  @override
  void initState() {
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight]);
    // SystemChrome.setEnabledSystemUIOverlays([]);
    loadImage();
    super.initState();
  }

  void loadImage() async {
    image = await _loadImage('asset/s03.jpeg', width: 80, height: 80);
    setState(() {});
  }

  Future<ui.Image> _loadImage(
    String asset, {
    int width,
    int height,
  }) async {
    ByteData data = await rootBundle.load(asset);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: width, targetHeight: height);
    ui.FrameInfo fi = await codec.getNextFrame();
    return fi.image;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('混合模式'),
      ),
      body: image == null
          ? Container()
          : Container(
              child: CustomPaint(
                painter: PaperPainter(image),
              ),
            ),
    );
  }
}

class PaperPainter extends CustomPainter {
  ui.Image image;
  PaperPainter(this.image);
  @override
  void paint(Canvas canvas, Size size) async {
    BlendMode.values.asMap().forEach((index, mode) {
      drawBlendMode(canvas, mode, image: image);
      final dx = (index + 1) % 4;
      final dy = index / 4;
      canvas.translate(dx == 0 ? -270.0 : 90, (dy == 0 || dx != 0) ? 0 : 90);
    });
  }

  void drawBlendMode(Canvas canvas, BlendMode mode, {ui.Image image}) {
    var paint = Paint();
    canvas.drawRect(
      ui.Rect.fromCenter(
        center: Offset(50, 50),
        width: 80,
        height: 80,
      ),
      paint..color = Color(0x88ff0000),
    );
    canvas.drawImage(image, Offset(10, 10), paint..blendMode = mode);
    final pb = ui.ParagraphBuilder(ui.ParagraphStyle())
      ..pushStyle(ui.TextStyle(color: Colors.blue))
      ..addText(mode.toString());
    final pg = pb.build()..layout(ui.ParagraphConstraints(width: 80));
    canvas.drawParagraph(pg, Offset(10, 50));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
