import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:notes/constants/dimension_constants.dart';
import 'package:notes/constants/image_constants.dart';
import 'package:notes/model/navigation_item.dart';
import 'package:notes/routes/account.dart';
import 'package:notes/routes/documents.dart';
import 'package:notes/routes/home.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

List<NavigationItem> navigationItems = <NavigationItem>[
  NavigationItem(
      title: 'HOME',
      iconData: Icon(
        Icons.home,
        size: 30.0,
      )),
  NavigationItem(
      title: 'DOCS',
      iconData: Icon(
        Icons.folder,
        size: 30.0,
      )),
  NavigationItem(
      title: 'ACCOUNT',
      iconData: Image.asset(
        ImageConstants.kAccount,
        width: 30.0,
        height: 30.0,
      )),
];

class _BottomNavigationState extends State<BottomNavigation> {
  int _itemSelected = 0;

  // Create navigation items and show selection
  // item on active navigation index.
  getBottomBarItems(context) {
    return navigationItems
        .map(
          (item) => BottomNavigationBarItem(
            icon: item.iconData,
            activeIcon: Container(
              child: Column(
                children: [
                  Text(
                    item.title,
                    style: TextStyle(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Badge(
                    shape: BadgeShape.circle,
                    badgeColor: Theme.of(context).scaffoldBackgroundColor,
                  ),
                ],
              ),
            ),
            title: SizedBox(),
          ),
        )
        .toList();
  }

  List<Widget> _widgetOptions = <Widget>[
    Home(),
    Documents(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_itemSelected),
      bottomNavigationBar: SizedBox(
        height: DimensionConstants.kBottomNavigationHeight,
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: _itemSelected,
          onTap: (index) {
            setState(() {
              // If account is selected go to Account route. //
              if (index == 2) {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Account()));
              } else {
                _itemSelected = index;
              }
            });
          },
          items: getBottomBarItems(context),
        ),
      ),
    );
  }
}
