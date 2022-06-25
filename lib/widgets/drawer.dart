// ignore: unnecessary_import
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MyDrawer extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final _imageURL = "https://media-exp2.licdn.com/dms/image/C4D03AQEWQk6SIJUtXQ/profile-displayphoto-shrink_800_800/0/1654339103114?e=1661385600&v=beta&t=B4Le6Ov_diN18f3ccvPrsjBWmRsCCEaAiSuHMHIMZCo";
    return Drawer(
      // ignore: avoid_unnecessary_containers
      child:Container(
        
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              // ignore: prefer_const_constructors
              decoration:BoxDecoration(
                color: Colors.deepPurple,
              ),
              margin: EdgeInsets.zero,
              
              accountName: const Text("Saurabh Shukla",
               style: TextStyle(
                fontWeight: FontWeight.bold,
               ),
              ),
             accountEmail: const Text("sv176734@gmail.com"),
             currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(_imageURL),
             ),
             )
            ),
             const ListTile(
              // ignore: unnecessary_const
              leading: const Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text("Home",
              textScaleFactor: 1.3,
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              
              ),
              title: Text("Profile",
              textScaleFactor: 1.3,
              ),
            ),
            const ListTile(
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