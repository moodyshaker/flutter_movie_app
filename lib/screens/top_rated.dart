import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/top_rated_provider.dart';
import 'package:provider/provider.dart';

import 'search.dart';

class TopRated extends StatefulWidget {
  @override
  _TopRatedState createState() => _TopRatedState();
}

class _TopRatedState extends State<TopRated>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(initialIndex: 0, length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TopRatedProvider>(
      builder: (context, data, child) => Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          centerTitle: true,
          bottom: TabBar(
            controller: _controller,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.white,
            indicatorColor: Colors.white,
            indicator: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(
                    15,
                  ),
                  topLeft: Radius.circular(
                    15,
                  ),
                )),
            tabs: [
              Tab(
                text: 'Movies',
              ),
              Tab(
                text: 'Series',
              ),
            ],
            onTap: data.setCurrentIndex,
          ),
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
            'Top Rated',
          ),
        ),
        body: data.currentWidget,
      ),
    );
  }
}
