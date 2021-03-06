import 'package:ecomm_ui/shared/colors.dart';
import 'package:flutter/material.dart';
import '../homepage.dart';

class DrawerBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  decoration: BoxDecoration(
                    color: coralColor,
                  ),
                  child: Text(
                    'Shop.io',
                    style: TextStyle(
                      color: beige,
                      fontSize: 24,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Homepage()),
                    );
                  },
                ),
                /*ListTile(
                  leading: Icon(Icons.message),
                  title: Text('Messages'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Messages()),
                    );
                  },
                ),*/
                // ListTile(
                //   leading: Icon(Icons.account_circle),
                //   title: Text('Users List'),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => Users_Count()),
                //     );
                //   },
                // ),
                // ListTile(
                //   leading: Icon(Icons.account_circle),
                //   title: Text('Profile'),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => Profile()),
                //     );
                //   },
                // ),
                /*ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Settings()),
                    );
                  },
                ),*/
                // ListTile(
                //   leading: Icon(Icons.report),
                //   title: Text('Report'),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => Reports()),
                //     );
                //   },
                // ),
                // ListTile(
                //   leading: Icon(Icons.help),
                //   title: Text('Help'),
                //   onTap: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(builder: (context) => Help()),
                //     );
                //   },
                // ),
              ],
            ),
          );
  }
}