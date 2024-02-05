import 'package:flutter/material.dart';
import 'package:responsive_dashboard_ui/responsive/desktop_Scaffold.dart';
import 'package:responsive_dashboard_ui/responsive/mobile_Scaffold.dart';
import 'package:responsive_dashboard_ui/responsive/responsive_layout.dart';
import 'package:responsive_dashboard_ui/responsive/tablet_Scaffold.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Responsive Dashboard",
      debugShowCheckedModeBanner: false,
      home: ResponsiveLayout(
          mobileScaffold: MyMobileScaffold(),
          tabletScaffold: MyTabletScaffold(),
          desktopScaffold: MyDesktopScaffold()),
    );
  }
}
