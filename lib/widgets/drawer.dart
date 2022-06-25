import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final _imageURL = "https://media-exp2.licdn.com/dms/image/C4D03AQEWQk6SIJUtXQ/profile-displayphoto-shrink_800_800/0/1654339103114?e=1661385600&v=beta&t=B4Le6Ov_diN18f3ccvPrsjBWmRsCCEaAiSuHMHIMZCo";
    return Drawer(
      child:Container(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              
              accountName: const Text("Saurabh Shukla"),
             accountEmail: const Text("sv176734@gmail.com"),
             currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(_imageURL),
             ),
             )
            ),
             const ListTile(
              leading: const Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text("Home",
              textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              
              ),
              title: Text("Profile",
              textScaleFactor: 1.3,
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              
              ),
              title: Text("Contact Us",
              textScaleFactor: 1.3,
              ),
            )
        ],
      ),
      )
    );
  }
}