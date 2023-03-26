class ProductsModel {
  ProductsModel(
      {this.description,
      this.image,
      this.rating,
      this.productName,
      this.price,
      this.model,
      this.lessprice,
      this.mainimg});
  final String? productName, description, price, rating, mainimg, lessprice;
  final List<String>? image;
  final ProductsModel? model;
}

String des =
    "Home Change in Dhaka We are reliable, safe and efficient home movers in Dhaka who can handle your move with success! We all wish to move to a new home without much stress and complication. We are the best house shifting service provider in dhaka.";

List<ProductsModel> productlist = [
  ProductsModel(
    productName: 'Man T Shart',
    mainimg:
        'https://ofarz.com/storage/dashboard/product/thumbnails/QSk1rFQmEhcN5VuZhp4Z30kg49IX0awO4eHnCJEB.jpg',
    description: des,
    price: '3,000',
    lessprice: '1,000',
    image: [
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg',
      'https://www.hourmaid.com/wp-content/uploads/2017/12/cleaning-services-1024x682.jpeg',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg',
      'https://www.houseofficeshift.com/wp-content/uploads/2019/03/03B61082.jpg'
    ],
    rating: '8.9',
  ),
];
