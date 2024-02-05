import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/responsive/constants.dart';

import '../util/my_box.dart';
import '../util/my_tile.dart';

class MyDesktopScaffold extends StatefulWidget {
  const MyDesktopScaffold({super.key});

  @override
  State<MyDesktopScaffold> createState() => _MyDesktopScaffoldState();
}

class _MyDesktopScaffoldState extends State<MyDesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myDefaultBgColor,
        foregroundColor: myDefaultFgColor,
      ),
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
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
          ),
          Expanded(child: Column(
            children: [
              Expanded(
                child: Container(
                  color: Colors.grey.shade400,
                ),
              )
            ],
          )),
        ],
      ),
      backgroundColor: myDefaultBgColorScaffold,
    );
  }
}
