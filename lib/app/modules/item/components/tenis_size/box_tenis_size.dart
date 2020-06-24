import 'package:flutter/material.dart';

class BoxTenisSize extends StatelessWidget {
  final String text;
  final Color color;
  final Color tColor;
  final Function function;

  const BoxTenisSize({
    Key key,
    @required this.text,
    this.color,
    this.tColor,
    this.function,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
            color: tColor,
          ),
        ),
      ),
    );
  }
}
