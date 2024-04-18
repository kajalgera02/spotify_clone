import 'package:flutter/material.dart';
import 'package:spotify_clone/home.dart';
import 'package:spotify_clone/library.dart';
import 'package:spotify_clone/search.dart';
import 'package:spotify_clone/profile.dart';
import 'home.dart';

class Tabbar extends StatefulWidget {
  const Tabbar({Key? key}) : super(key: key);

  @override
  State<Tabbar> createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> {
  int _selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedTab,
        onTap: (index) {
          setState(() {
            this._selectedTab = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: "Your Library",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
      body: Stack(
        children: [
          renderView(
            0,
            HomeView(),
            _selectedTab
          ),
          renderView(
            1,
            SearchView(),
            _selectedTab
          ),
          renderView(
            2,
            LibraryView(),
            _selectedTab
          ),
          renderView(
            3,
            ProfileView(),
            _selectedTab
          ),
        ],
      ),
    );
  }
}

Widget renderView(int tabIndex, Widget view, int _selectedTab) {
  return IgnorePointer(
    ignoring: _selectedTab != tabIndex,
    child: Opacity(
      opacity: _selectedTab == tabIndex ? 1 : 0,
      child: view,
    ),
  );
}
