import 'package:flutter/material.dart';
import 'package:nectar_app/componant/Buttons/app_main_button.dart';
import 'package:nectar_app/features/cart/widget/cart_list_veiw_widget.dart';

class MyCartScreen extends StatefulWidget {
  const MyCartScreen({super.key});

  @override
  State<MyCartScreen> createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
        child: Column(
          children: [
            Divider(color: Color(0xffE2E2E2)),
            const SizedBox(height: 30),
            CartListVeiwWidget(),

            AppMainButton(
              text: "Go to Checkout",
              onPressed: () {},
              totalPrice: 11.98,
            ),
          ],
        ),
      ),
    );
  }
}
