import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_movie_app/provider/now_playing_provider.dart';
import 'package:provider/provider.dart';

import 'search.dart';

class NowPlaying extends StatefulWidget {
  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying>
    with SingleTickerProviderStateMixin {
  TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NowPlayingProvider>(
      builder: (context, data, child) =>
          NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              elevation: 0.0,
              pinned: true,
              floating: true,
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
                    text: 'Airing Today',
                  ),
                  Tab(
                    text: 'On The Air',
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
                'Now Playing',
              ),
            ),
          ],
          body: data.currentWidget,
        ),
    );
  }
}
