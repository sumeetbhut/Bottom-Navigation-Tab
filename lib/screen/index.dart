import 'package:education_app/components/bottomNavigationBar.dart';
import 'package:education_app/screen/bottomTabs/bookmarkTab.dart';
import 'package:education_app/screen/bottomTabs/homeTab.dart';
import 'package:education_app/screen/bottomTabs/placeholderTab.dart';
import 'package:education_app/screen/bottomTabs/profileTab.dart';
import 'package:flutter/material.dart';
import 'package:education_app/utils/Theme.dart' as AppTheme;

import 'bottomTabs/notificationTab.dart';
import 'bottomTabs/statisticsTab.dart';

class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  int _selectedTab = 2;

  final _tabs = [
    BookMarkTab(),
    NotificationTab(),
    HomeTab(),
    StatisticsTab(),
    ProfileTab(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _tabs[_selectedTab],
        bottomNavigationBar: BottomNav(
          index: _selectedTab,
          labelStyle: LabelStyle(showOnSelect: true),
          iconStyle: IconStyle(onSelectColor: AppTheme.Colors.flatPurple),
          items: [
            BottomNavItem("lib/assets/images/bookmark.svg", label: 'bookmark'),
            BottomNavItem("lib/assets/images/notification.svg",
                label: 'notification'),
            BottomNavItem("lib/assets/images/home.svg", label: 'home'),
            BottomNavItem("lib/assets/images/controls.svg", label: 'Settings'),
            BottomNavItem("lib/assets/images/user.svg", label: 'user')
          ],
          onTap: (index) {
            setState(() {
              _selectedTab = index;
            });
          },
        ));
  }
}
