import 'package:flutter/material.dart';

class UserFavourite extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final Color titleColor;
  final Color itemCountColor;
  final String title;
  final Function onPress;
  final int itemsCount;

  UserFavourite({
    @required this.icon,
    this.iconColor,
    this.itemCountColor,
    @required this.title,
    this.titleColor,
    @required this.onPress,
    @required this.itemsCount,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
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
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                '$itemsCount',
                style: TextStyle(
                  color: itemCountColor,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(
                height: 4.0,
              ),
              Text(
                itemsCount == 1 ? 'Item' : 'Items',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
