import 'package:flut_tube/core/services/responsive_size.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyChannelScreen extends StatelessWidget {
  const MyChannelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 20.kh,
          ),
          child: Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 38.kh,
                  backgroundColor: Colors.grey,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.kh, bottom: 4.kh),
                child: Text(
                  "Ronit Rameja",
                  style: GoogleFonts.roboto(
                    fontSize: 27.kh,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 9.kh),
                child: RichText(
                  text: TextSpan(
                    style: GoogleFonts.roboto(color: Colors.blueGrey),
                    children: const [
                      TextSpan(text: "@ronit-rameja"),
                      TextSpan(text: "No subscriptions"),
                      TextSpan(text: "No videos"),
                    ],
                  ),
                ),
              ),
              const Text("More about this channel"),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
