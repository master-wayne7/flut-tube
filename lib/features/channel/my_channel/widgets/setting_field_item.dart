import 'package:flut_tube/core/services/responsive_size.dart';
import 'package:flut_tube/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsItem extends StatelessWidget {
  final String identifier;
  final VoidCallback onPressed;
  final String value;

  const SettingsItem({
    super.key,
    required this.identifier,
    required this.onPressed,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16.kw, right: 14.kw, top: 6.kh, bottom: 4.kh),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                identifier,
                style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize: 15.kh,
                ),
              ),
              4.kheightBox,
              Text(value),
            ],
          ),
          GestureDetector(
            onTap: onPressed,
            child: Assets.icons.pen.image(height: 21.kh),
          ),
        ],
      ),
    );
  }
}
