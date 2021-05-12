import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/popularSunProvider/s_provider.dart';
import 'package:flutter_movie_app/widgets/series_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class PopularSeries extends StatefulWidget {
  @override
  _PopularSeriesState createState() => _PopularSeriesState();
}

class _PopularSeriesState extends State<PopularSeries> {
  PSProvider _psProvider;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _psProvider = Provider.of<PSProvider>(context, listen: false);
    getMovies();
  }

  void getMovies() async {
    await _psProvider.getPSeries();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<PSProvider>(
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
