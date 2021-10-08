import 'package:flutter/material.dart';
import 'package:flutter_movie_app/utilites/constant.dart';
import 'package:flutter_movie_app/provider/nowplaySubProviders/at_provider.dart';
import 'package:flutter_movie_app/widgets/loading_widget.dart';
import 'package:flutter_movie_app/widgets/movie_error_widget.dart';
import 'package:flutter_movie_app/widgets/paging_loading.dart';
import 'package:flutter_movie_app/widgets/series_item.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

class AiringToday extends StatefulWidget {
  @override
  _AiringTodayState createState() => _AiringTodayState();
}

class _AiringTodayState extends State<AiringToday> {
  ATSProvider _atsProvider;

  @override
  void initState() {
    super.initState();
    _atsProvider = Provider.of<ATSProvider>(context, listen: false);
    _atsProvider.getATSeries(isPaging: false);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ATSProvider>(
      builder: (context, data, child) => data.state == NetworkState.WAITING
          ? LoadingWidget()
          : data.state == NetworkState.ERROR
              ? MovieErrorWidget()
              : RefreshIndicator(
                  onRefresh: () => data.reloadPage(),
                  child: Column(
                    children: [
                      Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2, childAspectRatio: 8 / 12),
                          itemBuilder: (context, i) => SeriesItem(
                            item: data.series[i],
                          ),
                          itemCount: data.series.length,
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
