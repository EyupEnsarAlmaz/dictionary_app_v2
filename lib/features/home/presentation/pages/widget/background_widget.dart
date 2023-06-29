import 'package:flutter/material.dart';
import 'package:homescreen_widget/core/constants/assets_constants.dart';
import 'package:homescreen_widget/core/extantion/context_extantion.dart';

const _background = KAsset.backgroundImage;

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image:
            DecorationImage(fit: BoxFit.fill, image: AssetImage(_background)),
      ),
    );
  }
}
