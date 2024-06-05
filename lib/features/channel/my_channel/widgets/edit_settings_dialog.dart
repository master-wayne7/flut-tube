import 'package:flut_tube/core/services/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsDialog extends StatefulWidget {
  final String identifier;
  final Function(String channelName)? onSave;
  const SettingsDialog({
    super.key,
    required this.identifier,
    this.onSave,
  });

  @override
  State<SettingsDialog> createState() => _SettingsDialogState();
}

class _SettingsDialogState extends State<SettingsDialog> {
  final controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.only(top: 0),
      title: Padding(
        padding: const EdgeInsets.only(left: 22, top: 8),
        child: Text(
          widget.identifier,
          style: GoogleFonts.roboto(
            fontSize: 15.kh,
            color: Colors.black,
          ),
        ),
      ),
      content: SizedBox(
        height: 50.kh,
        child: TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(
            "CANCEL",
            style: GoogleFonts.roboto(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () {
            widget.onSave!(controller.text);
          },
          child: Text(
            "SAVE",
            style: GoogleFonts.roboto(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
