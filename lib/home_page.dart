import 'package:flutter/material.dart';
import 'custom_drawer.dart';
import 'bottom_navigation_screen.dart';
import 'reviews_page.dart';
import 'live_streaming_page.dart';
import 'upcoming_events_page.dart';
import 'tournaments_page.dart';
import 'homescreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0; // Set initial index to -1 for HomeScreen

  void _onTabChanged(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget _getPage(int index) {
    switch (index) {
      case 0:
        return HomeScreen();
      case 1:
        return ReviewsPage();
      case 2:
        return LiveStreamingPage();
      case 3:
        return UpcomingEventsPage();
      case 4:
        return TournamentsPage();
      default:
        return Center(
          child: Text('Placeholder Page'),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      body: _selectedIndex == -1 ? HomeScreen() : _getPage(_selectedIndex),
      drawer: CustomDrawer(),
      bottomNavigationBar: BottomNavigationScreen(
        currentIndex: _selectedIndex,
        onTabTapped: _onTabChanged,
      ),
    );
  }
}
