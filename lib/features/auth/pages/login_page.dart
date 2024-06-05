import 'package:flut_tube/core/services/responsive_size.dart';
import 'package:flut_tube/features/auth/repository/auth_service.dart';
import 'package:flut_tube/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.kh, bottom: 25.kh),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.youtubeLogo.image(height: 80.kh),
                    Text(
                      "FlutTube",
                      style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 60.kh,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Welcome To FlutTube",
                style: GoogleFonts.roboto(
                  fontSize: 30.kh,
                  fontWeight: FontWeight.w500,
                  color: Colors.blueGrey,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(bottom: 55.kh),
                child: GestureDetector(
                  onTap: () async {
                    await ref.read(authServiceProvider).signInWithGoogle();
                  },
                  child: Assets.images.signinwithgoogle.image(height: 60.kh),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
