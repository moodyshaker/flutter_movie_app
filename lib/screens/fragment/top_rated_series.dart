import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/topratedSubProvider/s_provider.dart';
import 'package:flutter_movie_app/widgets/series_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class TopRatedSeries extends StatefulWidget {
  @override
  _TopRatedSeriesState createState() => _TopRatedSeriesState();
}

class _TopRatedSeriesState extends State<TopRatedSeries> {
  TRSProvider _psProvider;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _psProvider = Provider.of<TRSProvider>(context, listen: false);
    getMovies();
  }

  void getMovies() async {
    await _psProvider.getTRSeries();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TRSProvider>(
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
                itemBuilder: (context, i) => SeriesItem(
                  item: data.series[i],
                ),
                itemCount: data.series.length,
              ),
            ),
    );
  }
}
