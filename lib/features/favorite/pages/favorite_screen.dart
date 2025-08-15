import 'package:flutter/material.dart';
import 'package:nectar_app/componant/Buttons/app_main_button.dart';
import 'package:nectar_app/features/favorite/models/fav_model.dart';
import 'package:nectar_app/features/favorite/widgets/fav_item_widget.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favorurite",
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(28, 0, 25, 0),
        child: Column(
          children: [
            Divider(color: Color(0xffE2E2E2)),
            Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  var favProduct = favProducts[index];
                  return FavItemWidget(favModel: favProduct);
                },
                separatorBuilder: (context, index) {
                  return Divider(color: Color(0xffE2E2E2));
                },
                itemCount: favProducts.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: AppMainButton(text: "Add All To Cart", onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
