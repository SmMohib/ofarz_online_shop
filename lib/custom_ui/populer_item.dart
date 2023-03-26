// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconly/iconly.dart';
import 'package:ofarz_online_shop/model/product_model.dart';
import 'package:ofarz_online_shop/screens/detailsPage.dart';
import 'package:ofarz_online_shop/screens/search_Page.dart';
import 'package:ofarz_online_shop/utility/color.dart';
import 'package:ofarz_online_shop/utility/util.dart';
import 'package:ofarz_online_shop/widgets/buttons/hover_button.dart';
import 'package:ofarz_online_shop/widgets/text_widget.dart';

class PopulerItem extends StatelessWidget {
  const PopulerItem({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).sizeScreen;
    return ListView.builder(
        itemCount: productlist.length, //< 10 ? productlist.length : 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Material(
              color: Theme.of(context).cardColor.withOpacity(0.9),
              borderRadius: BorderRadius.circular(5),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {
                  Navigator.pushNamed(context, DetailPage.routeNamed);
                  // Navigator.pushNamed(context, ProductDetails.routeName,
                  //  arguments: productModel.id);
                  // GlobalMethods.navigateTo(
                  //     ctx: context, routeName: ProductDetails.routeName);
                },
                child: Container(
                  height: 230,
                  width: 110,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image(
                          image: CachedNetworkImageProvider(
                              '${productlist[index].mainimg} '),
                          height: size.width * 0.31,
                          //width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: TextWidget(
                            text: ('${productlist[index].productName} '),
                            textSize: 14,
                            isTitle: true,
                            maxLines: 1,
                            textStyle: TextStyle(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: Row(
                            children: [
                              TextWidget(
                                text: '\৳  ${productlist[index].price}',
                                textSize: 16,
                                isTitle: true,
                                maxLines: 1,
                                color: redClor,
                              ),
                              Text(
                                '\৳ 4.5',
                                style: TextStyle(
                                    fontSize: 15,
                                    color: dividerColor,
                                    decoration: TextDecoration.lineThrough),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            quantityControl(
                                fct: () {},
                                icon: IconlyLight.bag_2,
                                color: buttonColor2),
                            SizedBox(
                              width: 4,
                            ),
                            quantityControl(
                                fct: () {},
                                icon: IconlyLight.heart,
                                color: buttonColor1),
                          ],
                        ),
                      ]),
                ),
              ),
            ),
          );
        });
  }

  /////
  getColor(Color color, Color colorPress) {
    final getColor = (Set<MaterialState> set) {
      if (set.contains(MaterialState.pressed)) {
        return colorPress;
      } else {
        return color;
      }
    };
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
}
