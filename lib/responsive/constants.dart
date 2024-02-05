import 'package:flutter/material.dart';

//default background color Appbar
var myDefaultBgColor= Colors.grey.shade900;

//default background color
var myDefaultBgColorScaffold= Colors.grey.shade300;

//default foreground color
var myDefaultFgColor= Colors.white;


var myDrawer =  Drawer(

  shape: const Border(),
  backgroundColor: Colors.grey.shade300,
  child: const DrawerHeader(
    child: Column(
      children: [
        Icon(Icons.favorite),
        ListTile(
          leading: Icon(Icons.home),
          title: Text("D A S H B O A R D"),
        ),
        ListTile(
          leading: Icon(Icons.chat),
          title: Text("M E S S A G E"),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text("S E T T I N G S"),
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text("L O G O U T"),
        ),
      ],
    ),
  ),
);