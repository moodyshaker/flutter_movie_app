import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color titleColor;
  final Color cardBackground;
  final String title;
  final Function onPress;

  SettingItem({
    @required this.icon,
    this.iconColor,
    @required this.title,
    this.titleColor,
    this.cardBackground,
    @required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Card(
          color: cardBackground,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          elevation: 4.0,
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: iconColor,
                  size: 40.0,
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: titleColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
