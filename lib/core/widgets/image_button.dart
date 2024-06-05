import 'package:flut_tube/core/services/responsive_size.dart';
import 'package:flut_tube/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class ImageButton extends StatelessWidget {
  final VoidCallback onPressed;
  final AssetGenImage image;
  final bool haveColor;
  const ImageButton({
    super.key,
    required this.onPressed,
    required this.image,
    required this.haveColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 4, right: 4),
        child: Container(
          padding: const EdgeInsets.only(top: 7.6, bottom: 7.6),
          decoration: BoxDecoration(
            color: haveColor ? const Color(0xffF2F2F2) : null,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            ),
          ),
          child: image.image(height: 23.kh),
        ),
      ),
    );
  }
}
