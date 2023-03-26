import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ofarz_online_shop/utility/color.dart';
import 'package:ofarz_online_shop/utility/util.dart';

import 'package:getwidget/getwidget.dart';
import 'package:ofarz_online_shop/widgets/appbar.dart';

List list = [
  "Flutter",
  "React",
  "Ionic",
  "Xamarin",
];

class SearchPage extends StatefulWidget {
  static const routeName = '/searchscreen';
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).sizeScreen;
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [
          const AppbarWidget(),
          const SizedBox(
            height: 10,
          ),
          GFSearchBar(
            searchList: list,
            searchQueryBuilder: (query, list) {
              return list
                  .where((item) =>
                      item.toLowerCase().contains(query.toLowerCase()))
                  .toList();
            },
            overlaySearchListItemBuilder: (item) {
              return Container(
                padding: const EdgeInsets.all(8),
                child: Text(
                  item,
                  style: const TextStyle(fontSize: 18),
                ),
              );
            },
            onItemSelected: (item) {
              setState(() {
                print('$item');
              });
            },
          ),
        ],
      ),
    );
  }
}
