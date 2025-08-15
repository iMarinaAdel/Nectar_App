import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/cart/models/my_cart_model.dart';
import 'package:nectar_app/features/cart/widget/build_quantity_button.dart';

class CartCardWidget extends StatefulWidget {
  const CartCardWidget({super.key, required this.myCartModel});
  final MyCartModel myCartModel;

  @override
  State<CartCardWidget> createState() => _CartCardWidgetState();
}

class _CartCardWidgetState extends State<CartCardWidget> {
  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.myCartModel.image,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 20),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.myCartModel.name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      widget.myCartModel.description,
                      style: TextStyle(
                        fontSize: 16,
                        color: ColorsApp.grayColor,
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    BuildQuantityButton(
                      icon: Icons.remove,
                      onTap: () {
                        setState(() {
                          itemCount--;
                        });
                      },
                    ),
                    const SizedBox(width: 15),
                    Text("$itemCount", style: const TextStyle(fontSize: 18)),
                    const SizedBox(width: 15),
                    BuildQuantityButton(
                      icon: Icons.add,
                      onTap: () {
                        setState(() {
                          itemCount++;
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 12),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.close),
              Text(
                widget.myCartModel.price,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
