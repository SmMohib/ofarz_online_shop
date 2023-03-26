// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:iconly/iconly.dart';
import 'package:ofarz_online_shop/custom_ui/populer_item.dart';
import 'package:ofarz_online_shop/model/product_model.dart';
import 'package:ofarz_online_shop/screens/appBar/support_Page.dart';
import 'package:ofarz_online_shop/screens/search_Page.dart';

import 'package:ofarz_online_shop/utility/color.dart';
import 'package:ofarz_online_shop/utility/util.dart';
import 'package:ofarz_online_shop/widgets/buttons/hover_button.dart';
import 'package:ofarz_online_shop/widgets/buttons/more_button.dart';
import 'package:ofarz_online_shop/widgets/img_slider.dart';
import 'package:ofarz_online_shop/widgets/onsale.dart';
import 'package:ofarz_online_shop/widgets/text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).sizeScreen;
    return Scaffold(
      appBar: AppBar(
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
                        fct: () {
                          Navigator.pushNamed(context, SupportPage.routeNamed);
                        },
                        icon: Icons.people,
                        color: buttonColor2),
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
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: size.width / 3,
            child: ImageSlider(),
          ),
          SizedBox(
            height: 10,
          ),
          //social link
          Container(
            height: 70,
            color: cardColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://icon-library.com/images/group-icon-png/group-icon-png-15.jpg',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'Fb Group',
                ),
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://png.pngtree.com/png-vector/20221018/ourmid/pngtree-facebook-social-media-icon-png-image_6315968.png',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'Fb Page',
                ),
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://w7.pngwing.com/pngs/858/954/png-transparent-training-and-development-corporate-education-lean-six-sigma-management-inteligence-logo-industry-experience-thumbnail.png',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'Training',
                ),
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://w7.pngwing.com/pngs/208/269/png-transparent-youtube-play-button-computer-icons-youtube-youtube-logo-angle-rectangle-logo-thumbnail.png',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'Youtube',
                ),
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://w7.pngwing.com/pngs/75/866/png-transparent-category-management-organization-retail-management-miscellaneous-text-retail-thumbnail.png',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'Category',
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),

          //wallet link
          Container(
            height: 70,
            color: cardColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Apple_Wallet_Icon.svg/2560px-Apple_Wallet_Icon.svg.png',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'Wallet',
                ),
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://w7.pngwing.com/pngs/490/22/png-transparent-computer-icons-purchase-order-blog-order-miscellaneous-text-rectangle.png',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'My Order',
                ),
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://e7.pngegg.com/pngimages/670/876/png-clipart-vansdirect-ltd-business-refer-and-earn-white-van.png',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'My Refer',
                ),
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://img.freepik.com/premium-vector/shop-bag-logo-design-world-consumer-right-day-background_409025-503.jpg',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'Collection',
                ),
                socialButton(
                  fct: () {},
                  image: Image(
                    image: CachedNetworkImageProvider(
                      'https://www.androidbeat.com/wp-content/uploads/2017/05/New-Play-Store-logo.png',
                    ),
                    height: 16,
                    width: 16,
                  ),
                  text: 'App',
                ),
              ],
            ),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
              color: cardColor,
              height: 30,
              child: MoreButton(
                  fct: () {}, buttonText: 'Populer', color: redClor)),
          SizedBox(
            height: 5,
          ),
          SizedBox(
            height: size.width * 0.60,
            child: PopulerItem(),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
              color: cardColor,
              height: 30,
              child: MoreButton(
                  fct: () {}, buttonText: 'Health', color: textColor)),
         
          ////////////

          /////
        ],
      ),
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
