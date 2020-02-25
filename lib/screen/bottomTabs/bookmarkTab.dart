import 'package:education_app/screen/bottomTabs/placeholderTab.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;
import 'package:flutter_icons/flutter_icons.dart';

class BookMarkTab extends StatefulWidget {
  @override
  _BookMarkTabState createState() => _BookMarkTabState();
}

class _BookMarkTabState extends State<BookMarkTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: NestedScrollView(
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return <Widget>[
          new SliverAppBar(
            title: Text("BookMark",style: TextStyle(color: Colors.black54),),
            floating: true,
            elevation: 0,
            snap: true,
            backgroundColor: AppTheme.Colors.white,
            brightness: Brightness.light,
          ),
        ];
      },
      body: PlaceholderTab(icon: "lib/assets/images/bookmark.svg"),
    ));
  }
}
