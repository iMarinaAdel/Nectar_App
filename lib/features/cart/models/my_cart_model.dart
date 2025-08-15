class MyCartModel {
  final String image;
  final String name;
  final String description;
  final String price;

  MyCartModel({
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });
}

List<MyCartModel> myCartProduct = [
  MyCartModel(
    image: "assets/images/cart_image/Bell Pepper Red.png",
    name: "Bell Pepper Red",
    description: "1kg, Price",
    price: "\$4.99",
  ),
  MyCartModel(
    image: "assets/images/cart_image/Egg Chicken Red.png",
    name: "Egg Chicken Red",
    description: "4pcs, Price",
    price: "\$1.99",
  ),
  MyCartModel(
    image: "assets/images/cart_image/Organic Bananas.png",
    name: "Organic Bananas",
    description: "12kg, Price",
    price: "\$3.00",
  ),
  MyCartModel(
    image: "assets/images/cart_image/Ginger.png",
    name: "Ginger",
    description: "250gm, Price",
    price: "\$2.99",
  ),
];

