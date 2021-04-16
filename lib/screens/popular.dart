import 'package:flutter/material.dart';

import 'search.dart';

class Popular extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(
              right: 10.0,
            ),
            child: IconButton(
              onPressed: () => Navigator.pushNamed(context, Search.id),
              icon: Icon(
                Icons.search,
                color: Colors.white,
                size: 25.0,
              ),
            ),
          )
        ],
        title: Text(
          'Popular',
        ),
      ),
    );
  }
}
