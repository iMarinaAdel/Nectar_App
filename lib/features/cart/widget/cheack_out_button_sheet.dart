import 'package:flutter/material.dart';
import 'package:flutter_gap/flutter_gap.dart';
import 'package:nectar_app/componant/Buttons/app_main_button.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/extentions/navigation.dart';
import 'package:nectar_app/features/cart/models/cheackOut_model.dart';
import 'package:nectar_app/features/order_accepdet/pages/order_accepdet_screen.dart';

class CheackOutButtonSheet extends StatelessWidget {
  const CheackOutButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: .7,
      child: Container(
        decoration: const BoxDecoration(
          color: Color(0xffF2F3F2),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Checkout",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: AppColors.darkColor,
                    ),
                  ),
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.close),
                  ),
                ],
              ),

              Divider(color: AppColors.grayColor.withValues(alpha: .3)),
              const Gap(10),

              Expanded(
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    var cheackOut = checkOutModel[index];
                    return ButtonSheetItem(cheackoutModel: cheackOut);
                  },
                  separatorBuilder: (context, index) => Column(
                    children: [
                      const Gap(20),
                      Divider(color: AppColors.grayColor.withValues(alpha: .3)),
                      const Gap(20),
                    ],
                  ),
                  itemCount: checkOutModel.length,
                ),
              ),

              const Gap(10),

              Text(
                "By placing an order you agree to our Terms And Conditions",

                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: AppColors.darkColor,
                ),
              ),
              const Gap(15),
              AppMainButton(
                text: "Place Order",
                onPressed: () {
                  return AppNavigation.pushReplacementTO(
                    context,
                    OrderAccepdetScreen(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ButtonSheetItem extends StatelessWidget {
  const ButtonSheetItem({super.key, required this.cheackoutModel});
  final CheackoutModel cheackoutModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            cheackoutModel.title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: AppColors.grayColor,
            ),
          ),
        ),

        if (cheackoutModel.subTitle != null &&
            cheackoutModel.subTitle!.isNotEmpty) ...[
          Text(
            cheackoutModel.subTitle!,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.darkColor,
            ),
          ),
        ] else if (cheackoutModel.icon != null) ...[
          Icon(cheackoutModel.icon, color: AppColors.darkColor, size: 22),
        ],

        const Gap(15),
        const Icon(Icons.arrow_forward_ios_rounded, size: 18),
      ],
    );
  }
}
