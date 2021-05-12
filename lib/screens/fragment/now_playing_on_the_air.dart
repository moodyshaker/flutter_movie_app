import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/nowplaySubProviders/ota_provider.dart';
import 'package:flutter_movie_app/widgets/series_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class OnTheAir extends StatefulWidget {
  @override
  _OnTheAirState createState() => _OnTheAirState();
}

class _OnTheAirState extends State<OnTheAir> {
  OTASProvider _otasProvider;

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _otasProvider = Provider.of<OTASProvider>(context, listen: false);
    getMovies();
  }

  void getMovies() async {
    await _otasProvider.getOTASeries();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<OTASProvider>(
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
