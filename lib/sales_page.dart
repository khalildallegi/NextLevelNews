import 'package:flutter/material.dart';
import 'home_page.dart'; // Import the HomePage widget

class SalesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
        title: Text('Sales Page'),
      ),
      body: Center(
        child: Text(
          'Sales Page Content',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
