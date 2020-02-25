import 'package:education_app/screen/bottomTabs/placeholderTab.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;
import 'package:flutter_icons/flutter_icons.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          new SliverAppBar(
            title: Text("Home",style: TextStyle(color: Colors.black54),),
            floating: true,
            elevation: 0,
            snap: true,
            backgroundColor: AppTheme.Colors.white,
            brightness: Brightness.light,
            actions: <Widget>[
              IconButton(
                icon: Icon(EvilIcons.getIconData("search")),
                color: AppTheme.Colors.black,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.sort),
                color: AppTheme.Colors.black,
                onPressed: () {},
              ),
            ],
          ),
        ];
      },
      body: PlaceholderTab(icon: "lib/assets/images/home.svg"),
    ));
  }
}
