import 'package:flutter/material.dart';
import 'package:flutter_draw/s02/s02-1.dart';
import 'package:flutter_draw/s03/s03-05.dart';
import 'package:flutter_draw/s03/s03-07.dart';
import 'package:flutter_draw/s03/s03-08.dart';
import 'package:flutter_draw/s03/s03-09.dart';
import 'package:flutter_draw/s03/s03-1.dart';
import 'package:flutter_draw/s03/s03-2.dart';
import 'package:flutter_draw/s03/s03-3.dart';
import 'package:flutter_draw/s03/s03-4.dart';
import 'package:flutter_draw/s03/s03-6.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomButton(
          title: '1.flutter绘制的基础实例',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample2();
              }),
            );
          },
        ),
        CustomButton(
          title: '3.flutter画笔-基础',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample31();
              }),
            );
          },
        ),
        CustomButton(
          title: '3.flutter画笔-strokeCap',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample32();
              }),
            );
          },
        ),
        CustomButton(
          title: '4.flutter画笔-strokeJoin',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample33();
              }),
            );
          },
        ),
        CustomButton(
          title: '5.flutter画笔-strokeMiterLimit',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample34();
              }),
            );
          },
        ),
        CustomButton(
          title: '6.flutter画笔-线性渐变',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample35();
              }),
            );
          },
        ),
        CustomButton(
          title: '7.flutter画笔-径向渐变',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample36();
              }),
            );
          },
        ),
        CustomButton(
          title: '8.flutter画笔-扫描渐变',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample37();
              }),
            );
          },
        ),
        CustomButton(
          title: '9.flutter画笔-图片',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample38();
              }),
            );
          },
        ),
        CustomButton(
          title: '10.flutter画笔-BlendMode',
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (_) {
                return Sample39();
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
