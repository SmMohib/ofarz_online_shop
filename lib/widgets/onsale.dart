import 'package:flutter/material.dart';
import 'package:ofarz_online_shop/utility/color.dart';
import 'package:ofarz_online_shop/utility/util.dart';
import 'package:ofarz_online_shop/widgets/buttons/auth_button.dart';
import 'package:ofarz_online_shop/widgets/buttons/hover_button.dart';
import 'package:ofarz_online_shop/widgets/text_widget.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({Key? key}) : super(key: key);

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    // final Color color = Utils(context).color;
    //final productModel = Provider.of<ProductModel>(context);
    // final theme = Utils(context).getTheme;
    Size size = Utils(context).sizeScreen;
    // final cartProvider = Provider.of<CartProvider>(context);
    // bool? _isInCart = cartProvider.getCartItems.containsKey(productModel.id);
    // final wishlistProvider = Provider.of<WishlistProvider>(context);
    //  bool? _isInWishlist =
    //    wishlistProvider.getWishlistItems.containsKey(productModel.id);

    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Material(
        color: Theme.of(context).cardColor.withOpacity(0.9),
        borderRadius: BorderRadius.circular(5),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: () {
            // Navigator.pushNamed(context, ProductDetails.routeName,
            //  arguments: productModel.id);
            // GlobalMethods.navigateTo(
            //     ctx: context, routeName: ProductDetails.routeName);
          },
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FancyShimmerImage(
                      imageUrl:
                          'https://ofarz.com/storage/dashboard/product/thumbnails/QSk1rFQmEhcN5VuZhp4Z30kg49IX0awO4eHnCJEB.jpg',
                      height: size.width * 0.26,
                      width: size.width * 0.32,
                      boxFit: BoxFit.fill,
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                // Image(
                //   image: CachedNetworkImageProvider(
                //     'https://ofarz.com/storage/dashboard/product/thumbnails/QSk1rFQmEhcN5VuZhp4Z30kg49IX0awO4eHnCJEB.jpg',
                //   ),
                //   height: size.width / 3,
                //   width: size.width * 28,
                // ),
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Column(
                    children: [
                      TextWidget(
                        text: 'efdsaaaaa ',
                        textSize: 16,
                        isTitle: true,
                        maxLines: 1,
                        textStyle: TextStyle(),
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
                          Text(
                            '\৳ 4.5',
                            style: TextStyle(
                                fontSize: 15,
                                color: dividerColor,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 4,
                      ),
                      Row(
                        children: [
                          HoverButton(
                              onTap: () {}, text: "text", color: redClor),
                          SizedBox(
                            width: 4,
                          ),
                          HoverButton(
                              onTap: () {}, text: "text", color: redClor)
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
              ]),
        ),
      ),
    );
  }
}
