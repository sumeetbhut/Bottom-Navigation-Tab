import 'package:education_app/screen/bottomTabs/placeholderTab.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;
import 'package:flutter_icons/flutter_icons.dart';

class StatisticsTab extends StatefulWidget {
  @override
  _StatisticsTabState createState() => _StatisticsTabState();
}

class _StatisticsTabState extends State<StatisticsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          new SliverAppBar(
            title: Text("Statistics",style: TextStyle(color: Colors.black54),),
            floating: true,
            elevation: 0,
            snap: true,
            backgroundColor: AppTheme.Colors.white,
            brightness: Brightness.light,
          ),
        ];
      },
      body: PlaceholderTab(icon: "lib/assets/images/controls.svg"),
    ));
  }
}
