import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/popular_provider.dart';
import 'package:provider/provider.dart';

import 'search.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(
      vsync: this,
      initialIndex: 0,
      length: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PopularProvider>(
      builder: (context, data, child) => NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            centerTitle: true,
            elevation: 0.0,
            floating: true,
            pinned: true,
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
              'Popular',
            ),
          ),
        ],
        body: data.currentWidget,
      ),
    );
  }
}
