import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/responsive/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class MyTabletScaffold extends StatefulWidget {
  const MyTabletScaffold({super.key});

  @override
  State<MyTabletScaffold> createState() => _MyTabletScaffoldState();
}

class _MyTabletScaffoldState extends State<MyTabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: myDefaultFgColor,
        backgroundColor: myDefaultBgColor,
      ),
      drawer: myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 4,
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4), itemBuilder: (context, index) {
                return const MyBox();
              },),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return const MyTile();
              },),
          )
        ],
      ),
      backgroundColor: myDefaultBgColorScaffold,
    );
  }
}
