import 'package:flutter/material.dart';

class ColorDetailPage extends StatelessWidget {
  const ColorDetailPage({
    Key? key,
    required this.color,
    required this.title,
    required this.materialIndex,
  }) : super(key: key);

  final MaterialColor color;
  final String title;
  final int materialIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('$title[$materialIndex]'),
      ),
      body: Container(color: color[materialIndex]),
    );
  }
}
