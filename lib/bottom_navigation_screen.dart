import 'package:flutter/material.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';

class BottomNavigationScreen extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTabTapped;

  BottomNavigationScreen(
      {required this.currentIndex, required this.onTabTapped});

  @override
  Widget build(BuildContext context) {
    return FlashyTabBar(
      selectedIndex: currentIndex,
      showElevation: true,
      onItemSelected: onTabTapped,
      items: [
        FlashyTabBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.reviews),
          title: Text('Reviews'),
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.live_tv),
          title: Text('Live Streaming'),
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.today),
          title: Text('Upcoming Events'),
        ),
        FlashyTabBarItem(
          icon: Icon(Icons.star),
          title: Text('Tournaments'),
        ),
      ],
    );
  }
}
