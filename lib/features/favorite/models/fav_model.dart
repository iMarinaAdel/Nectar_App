class FavModel {
  final String image;
  final String name;
  final String subTitle;
  final String price;

  FavModel({
    required this.image,
    required this.name,
    required this.subTitle,
    required this.price,
  });
}

List<FavModel> favProducts = [
  FavModel(
    image: "assets/images/fav_images/sprint.png",
    name: "Sprite Can",
    subTitle: "325ml, Price",
    price: "\$1.55",
  ),
  FavModel(
    image: "assets/images/fav_images/Diet Coke.png",
    name: "Diet Coke",
    subTitle: "325ml, Price",
    price: "\$1.55",
  ),
  FavModel(
    image: "assets/images/fav_images/Pepsi Can .png",
    name: "Pepsi Can",
    subTitle: "325ml, Price",
    price: "\$1.50",
  ),
  FavModel(
    image: "assets/images/fav_images/Coca Cola Can.png",
    name: "Coca Cola Can",
    subTitle: "325ml, Price",
    price: "\$1.60",
  ),

  FavModel(
    image: "assets/images/fav_images/Apple & Grape Juice.png",
    name: "Apple & Grape Juice",
    subTitle: "1kg, Price",
    price: "\$4.99",
  ),
];
