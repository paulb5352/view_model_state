import 'package:flutter/material.dart';
import 'app_colors.dart';

class RtpWhiteContainer extends StatelessWidget {
  const RtpWhiteContainer({Key? key, required this.child, this.height})
      : super(key: key);
  final Widget child;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      padding: const EdgeInsets.only(
        right: 17,
        left: 17,
      ),
      height: height ?? double.maxFinite,
      width: double.maxFinite,
      decoration: const BoxDecoration(
        color: kcBrand10Color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      ),
    );
  }
}
