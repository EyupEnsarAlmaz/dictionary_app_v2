// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:homescreen_widget/core/constants/assets_constants.dart';
import 'package:homescreen_widget/core/extantion/context_extantion.dart';

const _background = KAsset.backgroundImage;

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);

  final Widget child;
  final void Function()? onTap;
  final logo = "assets/k_logo.png";

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight,
      width: context.dynamicWidth,
      decoration: const BoxDecoration(
        image:
            DecorationImage(fit: BoxFit.fill, image: AssetImage(_background)),
      ),
      child: Column(
        children: [
          Padding(
            padding: context.only(top: 0.03),
            child: InkWell(
              onTap: () {
                onTap;
              },
              child: Image.asset(logo,
                  width: context.width(0.25), height: context.height(0.15)),
            ),
          ),
          Expanded(child: child),
        ],
      ),
    );
  }
}
