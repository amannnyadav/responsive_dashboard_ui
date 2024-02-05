import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/responsive/constants.dart';
import 'package:responsive_dashboard_ui/util/my_box.dart';
import 'package:responsive_dashboard_ui/util/my_tile.dart';

class MyMobileScaffold extends StatefulWidget {
  const MyMobileScaffold({super.key});

  @override
  State<MyMobileScaffold> createState() => _MyMobileScaffoldState();
}

class _MyMobileScaffoldState extends State<MyMobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myDefaultBgColor,
        foregroundColor: myDefaultFgColor,
      ),
      backgroundColor: myDefaultBgColorScaffold,
      drawer: myDrawer,
      body: SafeArea(
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
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
    );
  }
}
