class HomeCardModel {
  HomeCardModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.iamge,
    this.description,
  });
  final String iamge;
  final String name;
  final String quantity;
  final String price;
  final String? description;
}

List<HomeCardModel> products = [
  HomeCardModel(
    name: "Organic Bananas",
    quantity: "7pcs, Priceg",
    price: "\$4.99",
    iamge: "assets/images/home_images/panana.png",
    description:
        "Organic bananas are rich in potassium and fiber, making them a healthy snack for energy and digestion. They are naturally sweet and perfect for smoothies, breakfast bowls, or eating fresh.",
  ),
  HomeCardModel(
    name: "Red Apples",
    quantity: "1kg, Priceg",
    price: "\$3.49",
    iamge: "assets/images/home_images/Red Apples.png",
    description:
        "Red apples are crisp, juicy, and full of antioxidants. They may support heart health and digestion while being a refreshing snack at any time of the day.",
  ),
  HomeCardModel(
    name: "Strawberries",
    quantity: "500g, Priceg",
    price: "\$5.99",
    iamge: "assets/images/home_images/Strawberries.png",
    description:
        "Strawberries are packed with vitamin C, antioxidants, and fiber. Their sweet and tangy flavor makes them perfect for desserts, salads, or smoothies.",
  ),
  HomeCardModel(
    name: "Oranges",
    quantity: "1kg, Priceg",
    price: "\$4.20",
    iamge: "assets/images/home_images/Oranges.png",
    description:
        "Oranges are a great source of vitamin C, known for boosting immunity and improving skin health. Enjoy them fresh, juiced, or in salads.",
  ),
  HomeCardModel(
    name: "Bell Pepper Red",
    quantity: "500g, Priceg",
    price: "\$6.30",
    iamge: "assets/images/home_images/Bell Pepper Red.png",
    description:
        "Red bell peppers are crunchy, sweet, and loaded with vitamin A and C. They are perfect for cooking, grilling, or eating raw in salads.",
  ),
  HomeCardModel(
    name: "Pineapple",
    quantity: "1pc, Priceg",
    price: "\$3.99",
    iamge: "assets/images/home_images/Pineapple.png",
    description:
        "Pineapples are tropical fruits rich in vitamin C and bromelain, an enzyme that supports digestion. Their juicy sweetness makes them a refreshing treat.",
  ),
  HomeCardModel(
    name: "Watermelon",
    quantity: "1pc, Priceg",
    price: "\$7.50",
    iamge: "assets/images/home_images/Watermelon.png",
    description:
        "Watermelons are hydrating and refreshing, with over 90% water content. They are a perfect summer fruit packed with vitamins A and C.",
  ),
  HomeCardModel(
    name: "Mango",
    quantity: "1kg, Priceg",
    price: "\$6.99",
    iamge: "assets/images/home_images/Mango.png",
    description:
        "Mangoes are known as the king of fruits, sweet, juicy, and rich in vitamins A and C. They are delicious fresh, in juices, or desserts.",
  ),
  HomeCardModel(
    name: "Peach",
    quantity: "1kg, Priceg",
    price: "\$5.20",
    iamge: "assets/images/home_images/Peach.png",
    description:
        "Peaches are juicy, sweet, and a good source of vitamins A and C. They promote skin health and are perfect for fresh snacking or baking.",
  ),
];
