import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_app/const/app_assets.dart';
import 'package:nectar_app/core/utils/app_colors.dart';
import 'package:nectar_app/features/home/widgets/build_home_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          AppAssets.logoSvg,
          width: 210,
          colorFilter: ColorFilter.mode(
            ColorsApp.primaryColor,
            BlendMode.srcIn,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 24),
        child: SingleChildScrollView(child: BuildHomeWidget()),
      ),
    );
  }
}
