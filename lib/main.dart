import 'package:flutter/material.dart';
import 'package:ofarz_online_shop/screens/appBar/support_Page.dart';
import 'package:ofarz_online_shop/screens/detailsPage.dart';
import 'package:ofarz_online_shop/screens/home.dart';

import 'package:ofarz_online_shop/screens/search_Page.dart';
import 'package:ofarz_online_shop/utility/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: backgroundColor,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
      routes: {
        DetailPage.routeNamed: (context) => DetailPage(),
        SearchPage.routeName: (context) => SearchPage(),
        SupportPage.routeNamed: (context) => SupportPage(),
      },
    );
  }
}
