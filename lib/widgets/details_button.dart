import 'package:flutter/material.dart';

class DetailsButton extends StatelessWidget {
  final Color color;
  final IconData icon;
  final Function onPress;

  DetailsButton({
    @required this.color,
    @required this.icon,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 2.0),
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Icon(
          icon,
          color: color,
          size: 30.0,
        ),
      ),
    );
  }
}
