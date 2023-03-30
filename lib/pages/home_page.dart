import 'package:flutter/material.dart';

import '../widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feed!'),
      ),
      drawer: MentorDrawer(),
      body: Center(
        child: Column(
          children: const [
            Text(
              'Welcome to homepage!',
              style: TextStyle(fontSize: 24),
            ),
            // ElevatedButton(onPressed: Navigator.push(context, MyRoutes.Home), child: child)
          ],
        ),
      ),
    );
  }
}
