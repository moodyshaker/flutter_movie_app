import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/popularSunProvider/m_provider.dart';
import 'package:flutter_movie_app/widgets/moive_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class PopularMovies extends StatefulWidget {
  @override
  _PopularMoviesState createState() => _PopularMoviesState();
}

class _PopularMoviesState extends State<PopularMovies> {
  PMProvider _npmProvider;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _npmProvider = Provider.of<PMProvider>(context, listen: false);
    getMovies();
  }

  void getMovies() async {
    await _npmProvider.getPMovies();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PMProvider>(
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
          itemBuilder: (context, i) => MovieItem(
            item: data.movies[i],
          ),
          itemCount: data.movies.length,
        ),
      ),
    );
  }
}
