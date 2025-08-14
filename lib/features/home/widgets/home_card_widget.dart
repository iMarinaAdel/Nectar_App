import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/home/models/model_box.dart';

class HomeCardWidget extends StatelessWidget {
  const HomeCardWidget({super.key, required this.cardModel});
  final HomeCardModel cardModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: 248,
      width: 176,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          const SizedBox(height: 10),
          Expanded(child: cardModel.iamge),
          const SizedBox(height: 25),
          Text(
            cardModel.name,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: ColorsApp.darkColor,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            cardModel.quantity,
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: ColorsApp.grayColor,
            ),
          ),
          const SizedBox(height: 15),
          Row(
            children: [
              Expanded(
                child: Text(
                  cardModel.price,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: ColorsApp.darkColor,
                  ),
                ),
              ),
              FloatingActionButton(
                heroTag: null,
                onPressed: () {},
                elevation: 0,
                mini: true,
                backgroundColor: ColorsApp.primaryColor,
                child: Icon(Icons.add, color: ColorsApp.whiteColor),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class BuildExclusiveOfferWidget extends StatelessWidget {
  const BuildExclusiveOfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final exclusiveOffer = products.take(3).toList();
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        var product = exclusiveOffer[index];
        return HomeCardWidget(cardModel: product);
      },
      separatorBuilder: (context, index) {
        return SizedBox(width: 10);
      },
      itemCount: exclusiveOffer.length,
    );
  }
}

class BuildBestSellingWidget extends StatelessWidget {
  const BuildBestSellingWidget({super.key, required this.bestSelling});

  final List<HomeCardModel> bestSelling;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 15,
        mainAxisExtent: 260,
      ),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        var product = bestSelling[index];
        return HomeCardWidget(cardModel: product);
      },
      itemCount: bestSelling.length,
    );
  }
}
