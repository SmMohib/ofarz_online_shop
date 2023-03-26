// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import 'package:ofarz_online_shop/utility/color.dart';
import 'package:ofarz_online_shop/widgets/appbar.dart';
import 'package:ofarz_online_shop/widgets/buttons/social_button.dart';
import 'package:ofarz_online_shop/widgets/text_widget.dart';

class SupportPage extends StatelessWidget {
  static const routeNamed = '/supportPage';
  const SupportPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppbarWidget(),
            SizedBox(
              height: 10,
            ),
            Center(
              child: CircleAvatar(
                radius: 80,
                backgroundColor: buttonColor1,
                child: CircleAvatar(
                    radius: 78,
                    backgroundColor: buttonColor1,
                    backgroundImage: NetworkImage(
                        'https://ofarz.com/storage/dashboard/user/oJJHaVY0qrlpkMku1fIdSIoKXWnYp9ycJuuaDLQV.png')),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 65,
              color: cardColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'Name: Mohibbullah',
                        textSize: 20,
                        isTitle: true,
                      ),
                      TextWidget(text: 'Refer Code: 22435', textSize: 16),
                    ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: double.infinity,
              height: 85,
              color: cardColor,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextWidget(
                            text: 'Refer Link',
                            textSize: 18,
                            isTitle: true,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(10),
                            color: buttonColor1,
                            child: InkWell(
                                borderRadius: BorderRadius.circular(10),
                                onTap: () {},
                                child: Container(
                                  height: 30,
                                  width: 70,
                                  child: Center(
                                    child: TextWidget(
                                      text: 'Copy',
                                      textSize: 16,
                                      color: cardColor,
                                    ),
                                  ),
                                )),
                          ),
                        ],
                      ),
                      Divider(
                        color: dividerColor,
                      ),
                      TextWidget(
                          text:
                              'https://ofarz.com/reseller/register?ref=100060',
                          textDecoration: TextDecoration.none,
                          textSize: 14),
                    ]),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                quantityControl(
                    fct: () {},
                    icon: IconlyBold.chart,
                    color: buttonColor1,
                    text: 'Order'),
                SizedBox(
                  width: 4,
                ),
                quantityControl(
                    fct: () {},
                    icon: IconlyBold.wallet,
                    color: yellwClor,
                    text: 'Wallet'),
                SizedBox(
                  width: 4,
                ),
                quantityControl(
                    fct: () {},
                    icon: IconlyBold.shield_done,
                    color: buttonColor2,
                    text: 'Reffer'),
                SizedBox(
                  width: 4,
                ),
                quantityControl(
                    fct: () {},
                    icon: IconlyBold.info_circle,
                    color: dividerColor,
                    text: 'Info'),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: double.infinity,
              color: cardColor,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        SocialButton(
                          color: buttonColor1,
                          fct: () {},
                          image:
                              'https://www.facebook.com/images/fb_icon_325x325.png',
                          text: 'Facebook',
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        SocialButton(
                          color: buttonColor1,
                          fct: () {},
                          image:
                              'https://cdn.wccftech.com/wp-content/uploads/2020/09/Gmail.png',
                          text: 'Gmail',
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        SocialButton(
                          color: buttonColor1,
                          fct: () {},
                          image:
                              'https://logowik.com/content/uploads/images/829_whatsapp_symbol.jpg',
                          text: 'Facebook',
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        SocialButton(
                          color: buttonColor1,
                          fct: () {},
                          image:
                              'https://www.facebook.com/images/fb_icon_325x325.png',
                          text: 'Join Group',
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //nev button
  Widget quantityControl(
      {required Function fct,
      required IconData icon,
      required Color color,
      required String text}) {
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
              padding: const EdgeInsets.all(4.0),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: Colors.white,
                    size: 22,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  TextWidget(
                    text: text,
                    textSize: 16,
                    color: cardColor,
                  )
                ],
              ),
            )),
      ),
    );
  }
}
