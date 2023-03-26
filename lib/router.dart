import 'package:flutter/material.dart';
import 'package:ofarz_online_shop/screens/detailsPage.dart';
import 'package:ofarz_online_shop/screens/search_Page.dart';
import 'package:ofarz_online_shop/widgets/text_widget.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  
  


    MaterialPageRoute(
        builder: (context) => DetailPage(),
      );
   MaterialPageRoute(
        builder: (context) => SearchPage(),
      );
   
      return MaterialPageRoute(
        builder: (context) => Scaffold(
         body: Center(child: TextWidget(text: 'No Page', textSize: 20),),
        ),
      );
  }
