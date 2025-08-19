import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/home/models/model_box.dart';
import 'package:nectar_app/features/product_detail/widgets/product_details_section.dart';
import 'package:nectar_app/features/product_detail/widgets/product_image_header.dart';
import 'package:nectar_app/features/product_detail/widgets/product_info_section.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key, required this.homeCardModel});
  final HomeCardModel homeCardModel;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF2F3F2),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.favorite, color: AppColors.primaryColor),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ProductImageHeader(image: widget.homeCardModel.iamge),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  ProductInfoSection(
                    name: widget.homeCardModel.name,
                    price: widget.homeCardModel.price,
                    itemCount: itemCount,
                    onIncrease: () {
                      setState(() => itemCount++);
                    },
                    onDecrease: () {
                      setState(() => itemCount--);
                    },
                  ),
                  const Gap(20),
                  ProductDetailsSection(
                    description:
                        widget.homeCardModel.description ?? "No description available",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
