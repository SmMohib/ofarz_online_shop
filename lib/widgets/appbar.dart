import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconly/iconly.dart';
import 'package:ofarz_online_shop/screens/search_Page.dart';

import 'package:ofarz_online_shop/utility/color.dart';
import 'package:ofarz_online_shop/widgets/text_widget.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        toolbarHeight: 70,
        elevation: 0,
        backgroundColor: cardColor,
        leadingWidth: 130,
        leading: Row(
          children: [
            SizedBox(
              width: 16,
            ),
            Image.asset(
              'assets/logo.png',
              height: 150,
              width: 100,
            ),
          ],
        ),
        actions: [
          Column(
            children: [
              Container(
                height: 20,
                width: 200,
                child: Row(
                  children: [
                    Image(
                      image: CachedNetworkImageProvider(
                        'https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-whatsapp-mobile-software-icon-png-image_6315991.png',
                      ),
                      height: 16,
                      width: 16,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    TextWidget(
                      text: '0145644456, ',
                      textSize: 14,
                      color: textColor,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    TextWidget(
                      text: '0145644456',
                      textSize: 14,
                      color: textColor,
                    ),
                  ],
                ),
              ),
              Container(
                width: 220,
                height: 40,
                child: Row(
                  children: [
                    quantityControl(
                        fct: () {
                          Navigator.pushNamed(context, SearchPage.routeName);
                        },
                        icon: IconlyLight.search,
                        color: buttonColor1),
                    SizedBox(
                      width: 4,
                    ),
                    quantityControl(
                        fct: () {}, icon: Icons.people, color: buttonColor2),
                    SizedBox(
                      width: 4,
                    ),
                    quantityControl(
                        fct: () {}, icon: IconlyLight.heart, color: redClor),
                    SizedBox(
                      width: 4,
                    ),
                    quantityControl(
                        fct: () {}, icon: IconlyLight.bag_2, color: yellwClor),
                    SizedBox(
                      width: 4,
                    ),
                    quantityControl(
                        fct: () {}, icon: Icons.menu, color: dividerColor),
                    SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      );
  }
  //nev button
  Widget quantityControl(
      {required Function fct, required IconData icon, required Color color}) {
    return Flexible(
      flex: 2,
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: color,
        child: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              fct();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                color: Colors.white,
                size: 22,
              ),
            )),
      ),
    );
  }

  //social
  Widget socialButton(
      {required Function fct, required Image image, required text}) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: backgroundColor,
            child: CircleAvatar(
              backgroundColor: cardColor,
              radius: 16,
              backgroundImage: image.image,
            ),
          ),
          TextWidget(
            text: text,
            textSize: 16,
          )
        ],
      ),
    );
  }
}