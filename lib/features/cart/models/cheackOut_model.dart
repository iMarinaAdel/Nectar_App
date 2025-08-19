import 'package:flutter/material.dart';

class CheackoutModel {
  final String title;
  final String? subTitle; 
  final IconData? icon;   

  CheackoutModel({
    required this.title,
    this.subTitle,
    this.icon,
  });
}

List<CheackoutModel> checkOutModel = [
  CheackoutModel(title: "Delivery", subTitle: "Select Method"),
  CheackoutModel(title: "Payment", icon: Icons.credit_card),
  CheackoutModel(title: "Promo Code", subTitle: "Pick Discount"),
    CheackoutModel(title: "Total Cost", subTitle: "\$13.97"),

];
