// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_final_fields, unused_field

import 'package:flutter/material.dart';
import 'package:my_food/main.dart';
import 'package:my_food/screens/categories_screen.dart';
import 'package:my_food/screens/favorites_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {'page': CategoriesScreen(), 'title': 'Categories'},
    {'page': FavoriteScree(), 'title': 'Your Favorites'},
  ];

  int _selectedPageIndex = 0;
  bool _value = false;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_pages[_selectedPageIndex]['title']),
        actions: [
          Switch(
            value: _value,
            onChanged: (newValue) {
              setState(() {
                _value = newValue;
                if (_value) {
                  MyApp.of(context)!.changeTheme(ThemeMode.dark);
                } else {
                  MyApp.of(context)!.changeTheme(ThemeMode.light);
                }
              });
            },
          ),
        ],
      ),
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.amber,
        currentIndex: _selectedPageIndex,
        //type: BottomNavigationBarType.shifting,
        mouseCursor: MouseCursor.defer,
        selectedFontSize: 15,
        unselectedFontSize: 10,
        showUnselectedLabels: true,
        landscapeLayout: BottomNavigationBarLandscapeLayout.linear,
        items: [
          BottomNavigationBarItem(
            //backgroundColor: Theme.of(context).primaryColorDark,
            icon: const Icon(
              Icons.category,
              //color: Colors.white,
            ),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            //backgroundColor: Theme.of(context).primaryColorDark,
            icon: const Icon(
              Icons.star,
            ),
            label: "Favorites",
          ),
        ],
      ),
    );
  }
}
