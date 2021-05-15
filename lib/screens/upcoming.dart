import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/upcoming_provider.dart';
import 'package:flutter_movie_app/widgets/moive_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import 'search.dart';

class Upcoming extends StatefulWidget {
  @override
  _UpcomingState createState() => _UpcomingState();
}

class _UpcomingState extends State<Upcoming> {
  UCProvider _npmProvider;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _npmProvider = Provider.of<UCProvider>(context, listen: false);
    getMovies();
  }

  void getMovies() async {
    await _npmProvider.getUCMovies();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<UCProvider>(
      builder: (context, data, child) => NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            floating: true,
            centerTitle: true,
            title: Text(
              'Upcoming',
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
          ),
        ],
        body: _isLoading
            ? Center(
                child: SpinKitDoubleBounce(
                  color: Theme.of(context).primaryColor,
                ),
              )
            : RefreshIndicator(
                onRefresh: () => data.reloadPage(),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 8 / 12,
                  ),
                  itemBuilder: (context, i) => MovieItem(
                    item: data.movies[i],
                  ),
                  itemCount: data.movies.length,
                ),
              ),
      ),
    );
  }
}
