import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:mentors/utils/routes.dart";

class MentorDrawer extends StatelessWidget {
  const MentorDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    var isLoggedIn = false;
    return Drawer(
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountEmail: Text("hello@gmail.com"),
              accountName: Text("Hello"),
            ),
          ),
          Divider(),
          InkWell(
            splashColor: Colors.blueAccent,
            highlightColor: Colors.lightBlueAccent,
            child: const ListTile(
              leading: Icon(CupertinoIcons.home),
              title: Text('Home'),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, MyRoutes.homeRoute);
            },
          ),
          if (isLoggedIn) // Conditionally show "Profile" button
            // ignore: dead_code
            ListTile(
              leading: const Icon(CupertinoIcons.profile_circled),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pushReplacementNamed(
                    context, MyRoutes.myProfileRoute);
              },
            ),
          const Divider(),
          const Divider(),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!isLoggedIn)
                  // ignore: dead_code
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    child: const Text("Login"),
                  ),
                const SizedBox(
                  height: 12,
                  width: 24,
                ),
                if (!isLoggedIn)
                  // ignore: dead_code
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Register as:'),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  GestureDetector(
                                    child: const Text('Normal'),
                                    onTap: () {
                                      // handle normal registration here
                                    },
                                  ),
                                  const Padding(padding: EdgeInsets.all(8.0)),
                                  GestureDetector(
                                    child: const Text('Mentor'),
                                    onTap: () {
                                      // handle mentor registration here
                                    },
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Text('Registration'),
                  ),
                if (isLoggedIn)
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.loginRoute);
                    },
                    child: const Text("Logout"),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
