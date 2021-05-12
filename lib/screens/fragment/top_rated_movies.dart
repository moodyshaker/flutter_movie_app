import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/topratedSubProvider/m_provider.dart';
import 'package:flutter_movie_app/widgets/moive_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class TopRatedMovies extends StatefulWidget {
  @override
  _TopRatedMoviesState createState() => _TopRatedMoviesState();
}

class _TopRatedMoviesState extends State<TopRatedMovies> {
  TRMProvider _npmProvider;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _npmProvider = Provider.of<TRMProvider>(context, listen: false);
    getMovies();
  }

  void getMovies() async {
    await _npmProvider.getTRMovies();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TRMProvider>(
      builder: (context, data, child) => _isLoading
          ? Center(
        child: SpinKitDoubleBounce(
          color: Theme.of(context).primaryColor,
        ),
      )
          : RefreshIndicator(
        onRefresh: () => data.reloadPage(),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 8 / 12),
          itemBuilder: (context, i) =>
              MovieItem(
            item: data.movies[i],
          ),
          itemCount: data.movies.length,
        ),
      ),
    );
  }
}
