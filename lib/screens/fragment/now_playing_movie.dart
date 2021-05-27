import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/nowplaySubProviders/m_provider.dart';
import 'package:flutter_movie_app/widgets/moive_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class NowPlayingMovies extends StatefulWidget {
  @override
  _NowPlayingMoviesState createState() => _NowPlayingMoviesState();
}

class _NowPlayingMoviesState extends State<NowPlayingMovies> {
  NPMProvider _npmProvider;
  bool _isLoading = true;
  bool _loadMore = false;
  ScrollController _controller;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController();
    _npmProvider = Provider.of<NPMProvider>(context, listen: false);
    getMovies();
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        if (!_loadMore) {
          setState(() {
            _loadMore = true;
          });
          loadMore();
        }
      }
    });
  }

  void getMovies() async {
    _npmProvider.setPage(1);
    await _npmProvider.getNPMovies();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<NPMProvider>(
      builder: (context, data, child) => _isLoading
          ? Center(
              child: SpinKitDoubleBounce(
                color: Theme.of(context).primaryColor,
              ),
            )
          : RefreshIndicator(
              onRefresh: () => data.reloadPage(),
              child: Column(
                children: [
                  Expanded(
                    child: GridView.builder(
                      controller: _controller,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, childAspectRatio: 8 / 12),
                      itemBuilder: (context, i) => MovieItem(
                        item: data.movies[i],
                      ),
                      itemCount: data.movies.length,
                    ),
                  ),
                  AnimatedContainer(
                    duration: Duration(milliseconds: 200),
                    height: _loadMore ? 60.0 : 0.0,
                    padding: EdgeInsets.symmetric(
                      vertical: 8.0,
                    ),
                    child: Center(
                      child: SpinKitThreeBounce(
                        size: 30.0,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
    );
  }

  void loadMore() async {
    await _npmProvider.nextPage();
    setState(() {
      _loadMore = false;
    });
  }
}
