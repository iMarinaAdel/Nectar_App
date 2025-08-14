import 'package:flutter/material.dart';
import 'package:nectar_app/componant/searchBar/searchBar_widget.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/explore/models/card_model.dart';
import 'package:nectar_app/features/explore/widgets/explore_card_widget.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Find Products",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: ColorsApp.darkColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 25, left: 25, top: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: SearchBarWidget(),
            ),
            Expanded(
              child: GridView.builder(
                itemCount: category.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  mainAxisExtent: 210,
                ),

                shrinkWrap: false,
                itemBuilder: (context, index) {
                  var categoryProduct = category[index];
                  return ExploreCardWidget(cardmodel: categoryProduct);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
