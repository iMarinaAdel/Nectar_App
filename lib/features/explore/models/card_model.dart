import 'package:flutter/material.dart';

class ExploreCardModel {
  final String image;
  final String catNmae;
  final Color borderColor;
  final Color backGroundColor;

  ExploreCardModel({
    required this.image,
    required this.catNmae,
    required this.borderColor,
    required this.backGroundColor,
  });
}

List<ExploreCardModel> category = [
  ExploreCardModel(
    image: "assets/images/Explore_images/pngfuel 6.png",
    catNmae: "Frash Fruits & Vegetable",
    borderColor: Color(0xfffbcfa1),
    backGroundColor: Color(0xffFEF6ED).withValues(alpha: 0.9),
  ),
  ExploreCardModel(
    image: "assets/images/Explore_images/pngfuel 8.png",
    catNmae: "Cooking Oil& Ghee",
    borderColor: Color(0xffa4d5b6),
    backGroundColor: Color(0xffeef7f1).withValues(alpha: 0.9),
  ),
  ExploreCardModel(
    image: "assets/images/Explore_images/pngfuel 9.png",
    catNmae: "Meat & Fish",
    borderColor: Color(0xffd7b7e2),
    backGroundColor: Color(0xfff4ebf7).withValues(alpha: 0.9),
  ),
  ExploreCardModel(
    image: "assets/images/Explore_images/pngfuel 6 (1).png",
    catNmae: "Bakery & Snacks",
    borderColor: Color(0xfff7b0a1),
    backGroundColor: Color(0xfffde8e4).withValues(alpha: 0.9),
  ),
  ExploreCardModel(
    image: "assets/images/Explore_images/pngfuel.png",
    catNmae: "Dairy & Eggs",
    borderColor: Color(0xffbbe1f5),
    backGroundColor: Color(0xffedf7fc).withValues(alpha: 0.9),
  ),

  ExploreCardModel(
    image: "assets/images/Explore_images/pngfuel 6 (2).png",
    catNmae: "Beverages",
    borderColor: Color(0xfffde69e),
    backGroundColor: Color(0xfffff8e5).withValues(alpha: 0.9),
  ),
  ExploreCardModel(
    image: "assets/images/Explore_images/pngfuel 6.png",
    catNmae: "Frash Fruits & Vegetable",
    borderColor: Color(0xfffbcfa1),
    backGroundColor: Color(0xffFEF6ED).withValues(alpha: 0.9),
  ),
  ExploreCardModel(
    image: "assets/images/Explore_images/pngfuel 8.png",
    catNmae: "Cooking Oil& Ghee",
    borderColor: Color(0xffa4d5b6),
    backGroundColor: Color(0xffeef7f1).withValues(alpha: 0.9),
  ),
];
