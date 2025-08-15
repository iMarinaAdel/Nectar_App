import 'package:flutter/material.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Profile Image
          ClipRRect(
            borderRadius: BorderRadius.circular(40),
            child: Image.asset(
              AppAssets.profile,
              width: 80,
              height: 80,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 20),
    
          // Name + Email
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Marina",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 21,
                        color: ColorsApp.darkColor,
                      ),
                    ),
                    const SizedBox(width: 6),
                    Icon(
                      Icons.edit,
                      size: 18,
                      color: ColorsApp.primaryColor,
                    ),
                  ],
                ),
                const SizedBox(height: 6),
                Text(
                  "marina123@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: ColorsApp.grayColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
