import 'package:flutter/material.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/account/models/profile_model.dart';

class ProfileItemWidget extends StatelessWidget {
  const ProfileItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: profileCats.length,
        itemBuilder: (context, index) {
          var profileCat = profileCats[index];
          return AccontCard(profileModel: profileCat);
        },
        separatorBuilder: (context, index) {
          return Divider(color: ColorsApp.grayColor.withValues(alpha: .3));
        },
      ),
    );
  }
}

class AccontCard extends StatelessWidget {
  const AccontCard({super.key, required this.profileModel});

  final ProfileModel profileModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // icon + text
          Row(
            children: [
              Image.asset(profileModel.icon, width: 22, height: 22),
              const SizedBox(width: 15),
              Text(
                profileModel.title,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: ColorsApp.darkColor,
                ),
              ),
            ],
          ),

          // arrow icon
          Icon(
            Icons.arrow_forward_ios_rounded,
            size: 18,
            color: ColorsApp.grayColor,
          ),
        ],
      ),
    );
  }
}
