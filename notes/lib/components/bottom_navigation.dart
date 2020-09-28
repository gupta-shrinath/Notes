import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:notes/constants/image_constants.dart';
import 'package:notes/routes/account.dart';
import 'package:notes/routes/documents.dart';
import 'package:notes/routes/home.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _itemSelected = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();



  }

  List<BottomNavigationBarItem> unSelectedItems = [
    BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 30.0,
        ),
        title: SizedBox()),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.folder,
          size: 30.0,
        ),
        title: SizedBox()),
    BottomNavigationBarItem(
        icon: Image.asset(
          ImageConstants.kAccount,
          width: 30.0,
          height: 30.0,
        ),
        title: SizedBox())
  ];

  List<BottomNavigationBarItem> selectedItems = [
    BottomNavigationBarItem(
        icon: Text(
          'HOME',
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        title: Container(
          height: 6.0,
          width: 6.0,
          child: Badge(
            badgeColor: Colors.white,
            shape: BadgeShape.circle,
          ),
        )),
    BottomNavigationBarItem(
        icon: Text(
          'DOCUMENTS',
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        title: Container(
          height: 6.0,
          width: 6.0,
          child: Badge(
            badgeColor: Colors.white,
            shape: BadgeShape.circle,
          ),
        )),
    BottomNavigationBarItem(
        icon: Text(
          'ACCOUNT',
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        title: Container(
          height: 6.0,
          width: 6.0,
          child: Badge(
            badgeColor: Colors.white,
            shape: BadgeShape.circle,
          ),
        )),
  ];

  List<BottomNavigationBarItem> items = [
    BottomNavigationBarItem(
        icon: Text(
          'HOME',
          style: TextStyle(
              color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w500),
        ),
        title: Container(
          height: 6.0,
          width: 6.0,
          child: Badge(
            badgeColor: Colors.white,
            shape: BadgeShape.circle,
          ),
        )),
    BottomNavigationBarItem(
        icon: Icon(
          Icons.folder,
          size: 30.0,
        ),
        title: SizedBox()),
    BottomNavigationBarItem(
        icon: Image.asset(
          ImageConstants.kAccount,
          width: 29.0,
          height: 29.0,
        ),
        title: SizedBox())
  ];
  // list of widgets to be displayed on screen
   List<Widget> _widgetOptions = <Widget>[
    Home(),
    Documents(),
     Account()

  ];

   // heading of appbar


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _widgetOptions.elementAt(_itemSelected),
      bottomNavigationBar: SizedBox(
        height: 70.0,
        child: BottomNavigationBar(
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: _itemSelected,
          onTap: (index) {
            setState(() {
              if (index == 0) {
                items[index] = selectedItems[index];
                items[1] = unSelectedItems[1];
                items[2] = unSelectedItems[2];
                _itemSelected = index;
              } else if (index == 1) {
                items[index] = selectedItems[index];
                items[0] = unSelectedItems[0];
                items[2] = unSelectedItems[2];
                _itemSelected = index;
              } else {
                items[index] = selectedItems[index];
                items[0] = unSelectedItems[0];
                items[1] = unSelectedItems[1];
                _itemSelected = index;
              }
            });
          },
          items: items,
        ),
      ),
    );
  }
}
