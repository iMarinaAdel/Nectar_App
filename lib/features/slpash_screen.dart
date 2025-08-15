import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/extentions/navigation.dart';
import 'package:nectar_app/features/auth/pages/location_screen.dart';

class SlpashScreen extends StatefulWidget {
  const SlpashScreen({super.key});

  @override
  State<SlpashScreen> createState() => _SlpashScreenState();
}

class _SlpashScreenState extends State<SlpashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3), () {
      AppNavigation.pushReplacementTO(context, LocationScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.primaryColor,
      body: Center(child: SvgPicture.asset(AppAssets.logoSvg)),
    );
  }
}
