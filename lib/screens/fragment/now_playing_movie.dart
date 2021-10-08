import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:flutter_movie_app/utilites/constant.dart';
import 'package:flutter_movie_app/provider/nowplaySubProviders/m_provider.dart';
import 'package:flutter_movie_app/widgets/loading_widget.dart';
import 'package:flutter_movie_app/widgets/moive_item.dart';
import 'package:flutter_movie_app/widgets/movie_error_widget.dart';
import 'package:flutter_movie_app/widgets/paging_loading.dart';
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
    _npmProvider.getNPMovies(isPaging: false);
    _controller.addListener(() {
      if (_controller.position.pixels == _controller.position.maxScrollExtent) {
        if (_npmProvider.state != NetworkState.PAGING) {
          _npmProvider.getNPMovies(isPaging: true);
        }
      }
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
      builder: (context, data, child) => data.state == NetworkState.WAITING
          ? const LoadingWidget()
          : data.state == NetworkState.ERROR
              ? const MovieErrorWidget()
              : RefreshIndicator(
                  onRefresh: () => data.reloadPage(),
                  child: Column(
                    children: [
                      Expanded(
                        child: GridView.builder(
                          controller: _controller,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 8 / 12,
                          ),
                          itemBuilder: (context, i) => MovieItem(
                            item: data.movies[i],
                          ),
                          itemCount: data.movies.length,
                        ),
                      ),
                      PagingLoading(
                        isPaging: data.state == NetworkState.PAGING,
                      ),
                    ],
                  ),
                ),
    );
  }
}
