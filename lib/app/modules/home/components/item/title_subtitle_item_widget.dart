import 'package:flutter/material.dart';

class TitleSubtitleItemWidget extends StatelessWidget {
  final String title;
  final String substitle;

  TitleSubtitleItemWidget({
    @required this.title,
    @required this.substitle,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          '$title',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
        Text(
          '$substitle',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}
