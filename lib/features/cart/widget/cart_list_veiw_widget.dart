import 'package:flutter/material.dart';
import 'package:nectar_app/features/cart/models/my_cart_model.dart';
import 'package:nectar_app/features/cart/widget/cart_card_widget.dart';

class CartListVeiwWidget extends StatelessWidget {
  const CartListVeiwWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          if (index == myCartProduct.length) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Divider(color: const Color(0xffE2E2E2)),
            );
          }
          var cartProduct = myCartProduct[index];
          return CartCardWidget(myCartModel: cartProduct);
        },

        separatorBuilder: (context, index) {
          if (index == myCartProduct.length - 1) {
            return SizedBox.shrink();
          }
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Divider(
              color: const Color(0xffE2E2E2),
              endIndent: 25,
              indent: 25,
              thickness: 1,
              height: 1,
            ),
          );
        },

        itemCount: myCartProduct.length + 1,
      ),
    );
  }
}
