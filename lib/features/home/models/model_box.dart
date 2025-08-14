import 'package:flutter/material.dart';

class HomeCardModel {
  HomeCardModel({
    required this.name,
    required this.quantity,
    required this.price,
    required this.iamge,
  });
  final Image iamge;
  final String name;
  final String quantity;
  final String price;
}

List<HomeCardModel> products = [
  HomeCardModel(
    name: "Organic Bananas",
    quantity: "7pcs, Priceg",
    price: "\$4.99",
    iamge: Image.network(
      "https://tse1.mm.bing.net/th/id/OIP.yfaiIwlIBgiGzvFRKPLGzAHaHk?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    ),
  ),
  HomeCardModel(
    name: "Red Apples",
    quantity: "1kg, Priceg",
    price: "\$3.49",
    iamge: Image.network(
      "https://tse4.mm.bing.net/th/id/OIP.gxVIhxEKV2L4dkBjwptXjwHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    ),
  ),
  HomeCardModel(
    name: "Strawberries",
    quantity: "500g, Priceg",
    price: "\$5.99",
    iamge: Image.network(
      "https://tse1.mm.bing.net/th/id/OIP.fbfv1UXqOC93nbKuzwAtPwHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    ),
  ),
  HomeCardModel(
    name: "Oranges",
    quantity: "1kg, Priceg",
    price: "\$4.20",
    iamge: Image.network(
      "https://tse4.mm.bing.net/th/id/OIP.gwKDzlzoEx0aZ7dDto7XMwHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    ),
  ),
  HomeCardModel(
    name: "Grapes",
    quantity: "500g, Priceg",
    price: "\$6.30",
    iamge: Image.network(
      "https://tse1.mm.bing.net/th/id/OIP.UHQclA-8gjS_c6-Tyniw_gHaGg?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    ),
  ),
  HomeCardModel(
    name: "Pineapple",
    quantity: "1pc, Priceg",
    price: "\$3.99",
    iamge: Image.network(
      "https://tse4.mm.bing.net/th/id/OIP.MKP4hfpbJiRNH4gZqUhptQHaG8?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    ),
  ),
  HomeCardModel(
    name: "Watermelon",
    quantity: "1pc, Priceg",
    price: "\$7.50",
    iamge: Image.network(
      "https://th.bing.com/th/id/OIP.Ag0THmS4nVJOp_mfNXnH_QHaFl?w=267&h=201&c=7&r=0&o=7&dpr=1.5&pid=1.7&rm=3",
    ),
  ),
  HomeCardModel(
    name: "Mango",
    quantity: "1kg, Priceg",
    price: "\$6.99",
    iamge: Image.network(
      "https://tse3.mm.bing.net/th/id/OIP.uH8jgflQe3kYoTfkpKgw1wHaGH?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    ),
  ),
  HomeCardModel(
    name: "Peach",
    quantity: "1kg, Priceg",
    price: "\$5.20",
    iamge: Image.network(
      "https://tse2.mm.bing.net/th/id/OIP.aDI36kKcimnHYzKTrsNVugHaHa?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
    ),
  ),
];
