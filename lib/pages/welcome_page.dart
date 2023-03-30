import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mentors/utils/routes.dart';

import '../utils/consts.dart';
import 'home_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, MyRoutes.homeRoute),
        // backgroundColor: MyTheme.darkBluishColor,
        child: const Icon(CupertinoIcons.news),
      ),
      appBar: AppBar(
        title: Text(MyConsts.appTitle),
      ),
      body: Center(
        child: Column(
          children: const [
            Text(
              'Welcome to welcome page!',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
