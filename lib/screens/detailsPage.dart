// ignore_for_file: prefer_const_constructors

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:iconly/iconly.dart';
import 'package:ofarz_online_shop/custom_ui/populer_item.dart';
import 'package:ofarz_online_shop/utility/color.dart';
import 'package:ofarz_online_shop/utility/util.dart';
import 'package:ofarz_online_shop/widgets/buttons/more_button.dart';
import 'package:ofarz_online_shop/widgets/img_slider.dart';
import 'package:ofarz_online_shop/widgets/onsale.dart';
import 'package:ofarz_online_shop/widgets/text_widget.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class DetailPage extends StatefulWidget {
  static const routeNamed = "/detailPage";
  DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    final panelHeightClosed = MediaQuery.of(context).size.height * 0.5;
    Size size = Utils(context).sizeScreen;
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          elevation: 0,
          backgroundColor: cardColor,
          leadingWidth: 130,
          leading: Row(
            children: [
              const SizedBox(
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
                      const Image(
                        image: CachedNetworkImageProvider(
                          'https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-whatsapp-mobile-software-icon-png-image_6315991.png',
                        ),
                        height: 16,
                        width: 16,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      TextWidget(
                        text: '0145644456, ',
                        textSize: 14,
                        color: textColor,
                      ),
                      const SizedBox(
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
                          fct: () {},
                          icon: IconlyLight.search,
                          color: buttonColor1),
                      const SizedBox(
                        width: 4,
                      ),
                      quantityControl(
                          fct: () {}, icon: Icons.people, color: buttonColor2),
                      const SizedBox(
                        width: 4,
                      ),
                      quantityControl(
                          fct: () {}, icon: IconlyLight.heart, color: redClor),
                      const SizedBox(
                        width: 4,
                      ),
                      quantityControl(
                          fct: () {},
                          icon: IconlyLight.bag_2,
                          color: yellwClor),
                      const SizedBox(
                        width: 4,
                      ),
                      quantityControl(
                          fct: () {}, icon: Icons.menu, color: dividerColor),
                      const SizedBox(
                        width: 6,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
        //

        body: Stack(
          children: <Widget>[
            Image(
              image: const CachedNetworkImageProvider(
                'https://ofarz.com/storage/dashboard/product/thumbnails/QSk1rFQmEhcN5VuZhp4Z30kg49IX0awO4eHnCJEB.jpg',
              ),
              height: size.width * 1.61,
              //width: double.infinity,
              fit: BoxFit.cover,
            ),
            SlidingUpPanel(
              maxHeight: size.height / 1,
              color: backgroundColor,
              panel: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'ফুল হাতা টিশার্ট',
                        textSize: 18,
                        isTitle: true,
                        maxLines: 1,
                        textStyle: const TextStyle(),
                      ),
                      Row(
                        children: [
                          TextWidget(
                            text: '\৳ 100 ',
                            textSize: 16,
                            isTitle: true,
                            maxLines: 1,
                            color: redClor,
                          ),
                          const Text(
                            '\৳ 4.5',
                            style: TextStyle(
                                fontSize: 15,
                                color: dividerColor,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 2,
                      ),
                      TextWidget(
                        text: ' Stocks: 100 ',
                        textSize: 16,
                        isTitle: true,
                        maxLines: 1,
                        color: buttonColor2,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        color: cardColor,
                        child: ListTile(
                          onTap: () => _show(context),
                          title: Row(
                            children: [
                              TextWidget(text: 'Description', textSize: 20),
                              const SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          subtitle: TextWidget(
                              text: 'Full descripton for Products',
                              textSize: 14),
                          trailing:
                              const Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          socialButton(
                              color: buttonColor1,
                              fct: () {},
                              // ignore: prefer_const_constructors
                              icon: Icon(
                                IconlyLight.bag,
                                color: cardColor,
                              ),
                              text: 'Wishlist'),
                          // ignore: prefer_const_constructors
                          SizedBox(
                            width: 4,
                          ),
                          socialButton(
                              color: buttonColor2,
                              fct: () {},
                              icon: const Icon(
                                IconlyLight.heart,
                                color: cardColor,
                              ),
                              text: 'Favorate'),
                          const SizedBox(
                            width: 4,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        color: cardColor,
                        child: ListTile(
                          onTap: () => _reviewshow(context),
                          title: Row(
                            children: [
                              TextWidget(text: 'Review', textSize: 20),
                              const SizedBox(
                                width: 5,
                              ),
                              CircleAvatar(
                                radius: 12,
                                backgroundColor: buttonColor1,
                                child: TextWidget(text: '11', textSize: 14),
                              )
                            ],
                          ),
                          subtitle:
                              TextWidget(text: 'All User Review', textSize: 14),
                          trailing:
                              const Icon(Icons.arrow_forward_ios_outlined),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      SizedBox(
                        height: 30,
                        child: MoreButton(
                            fct: () {},
                            buttonText: 'Suggested Products',
                            color: buttonColor2),
                      ),
                      SizedBox(
                        height: size.height / 3.5,
                        child: ListView.builder(
                          itemCount: 20,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return PopulerItem();
                          },
                        ),
                      ),
                      Divider(
                        color: dividerColor,
                      ),
                      Center(
                        child: TextWidget(
                          text: 'No More Products',
                          textSize: 16,
                          color: redClor,
                        ),
                      )
                    ]),
              ),
            )
          ],
        ));
  }

//nev button
  Widget quantityControl({
    required Function fct,
    required IconData icon,
    required Color color,
  }) {
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
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 22,
                  ),
                ],
              ),
            )),
      ),
    );
  }

  //social
  Widget socialButton(
      {required Function fct,
      required Icon icon,
      required text,
      required Color color}) {
    return Flexible(
      flex: 2,
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: color,
        child: InkWell(
          onTap: () {
            fct();
          },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              children: [
                Icon(
                  icon.icon,
                  color: cardColor,
                ),
                const SizedBox(
                  width: 10,
                ),
                TextWidget(
                  text: text,
                  textSize: 16,
                  color: cardColor,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  ////
  void _show(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: cardColor,
        context: ctx,
        builder: (ctx) => SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.copy,
                          color: redClor,
                        ),
                      ),
                      const SizedBox(
                        width: 200,
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.clear,
                          color: redClor,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 300,
                    height: 250,
                    color: Colors.white54,
                    alignment: Alignment.center,
                    child: ListView(
                      children: [
                        const Text(
                            "New Collection Product Type: Men's Full Sleeve T shirt Fabric: Imported Chania PP Style: Casual Gender: Men cti Country: Bangladesh Size:- M, L, XL, T-Shirt Measurements: M=Chest-38, Length-27 L=Chest-40, Length-2 XL=Chest-42, Length-29"),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                            "New Collection Product Type: Men's Full Sleeve T shirt Fabric: Imported Chania PP Style: Casual Gender: Men cti Country: Bangladesh Size:- M, L, XL, T-Shirt Measurements: M=Chest-38, Length-27 L=Chest-40, Length-2 XL=Chest-42, Length-29"),
                        const Text(
                            "New Collection Product Type: Men's Full Sleeve T shirt Fabric: Imported Chania PP Style: Casual Gender: Men cti Country: Bangladesh Size:- M, L, XL, T-Shirt Measurements: M=Chest-38, Length-27 L=Chest-40, Length-2 XL=Chest-42, Length-29"),
                        const Text(
                            "New Collection Product Type: Men's Full Sleeve T shirt Fabric: Imported Chania PP Style: Casual Gender: Men cti Country: Bangladesh Size:- M, L, XL, T-Shirt Measurements: M=Chest-38, Length-27 L=Chest-40, Length-2 XL=Chest-42, Length-29"),
                      ],
                    ),
                  ),
                ],
              ),
            ));
  }

////
  void _reviewshow(BuildContext ctx) {
    showModalBottomSheet(
        elevation: 10,
        backgroundColor: cardColor,
        context: ctx,
        builder: (ctx) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.clear,
                        color: redClor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 300,
                        height: 250,
                        color: Colors.white54,
                        alignment: Alignment.center,
                        child: ListView(
                          children: [
                            const Text(
                              'No Review',
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }
}
