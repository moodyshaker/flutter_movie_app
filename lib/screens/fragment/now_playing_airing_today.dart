import 'package:flutter/material.dart';
import 'package:flutter_movie_app/provider/nowplaySubProviders/at_provider.dart';
import 'package:flutter_movie_app/widgets/series_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class AiringToday extends StatefulWidget {
  @override
  _AiringTodayState createState() => _AiringTodayState();
}

class _AiringTodayState extends State<AiringToday> {
  ATSProvider _atsProvider;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _atsProvider = Provider.of<ATSProvider>(context, listen: false);
    getMovies();
  }

  void getMovies() async {
    await _atsProvider.getATSeries();
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ATSProvider>(
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
