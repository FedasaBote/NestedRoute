import 'package:flutter/material.dart';

class ColorsListPage extends StatelessWidget {
  ColorsListPage(
      {Key? key, required this.color, required this.title, this.onPush})
      : super(key: key);
  final MaterialColor color;
  final String title;
  final ValueChanged<int>? onPush;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: color,
      ),
      body: Container(
        color: Colors.white,
        child: _buildList(),
      ),
    );
  }

  final List<int> materialIndices = <int>[
    50,
    100,
    200,
    300,
    400,
    500,
    600,
    700,
    800,
    900
  ];

  Widget _buildList() {
    return ListView.builder(
      itemCount: materialIndices.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: color[materialIndices[index]],
          child: ListTile(
            title: Text(
              '$title[${materialIndices[index]}]',
              style: const TextStyle(fontSize: 24.0),
            ),
            onTap: () {
              if (onPush != null) {
                onPush!(materialIndices[index]);
              }
            },
          ),
        );
      },
    );
  }
}
