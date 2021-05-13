import 'package:flutter/material.dart';
import 'package:flutter_draw/s02/s02-1.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomButton(
          title: 'flutter绘制的基础实例',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample2();
              }),
            );
          },
        ),
      ],
    );
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  CustomButton({this.onTap, this.title});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 16,
      ),
      child: RaisedButton(
        child: Text(title),
        onPressed: onTap,
      ),
    );
  }
}
