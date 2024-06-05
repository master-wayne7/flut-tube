import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flut_tube/core/services/responsive_size.dart';
import 'package:flut_tube/features/auth/repository/user_data_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final formKey = GlobalKey<FormState>();

class UsernamePage extends ConsumerStatefulWidget {
  final String displayName;
  final String profilePic;
  final String email;
  const UsernamePage({
    super.key,
    required this.displayName,
    required this.email,
    required this.profilePic,
  });

  @override
  ConsumerState<UsernamePage> createState() => _UsernamePageState();
}

class _UsernamePageState extends ConsumerState<UsernamePage> {
  late final TextEditingController usernameController;
  bool isValid = true;
  void valiateUsername() async {
    final usersMap = await FirebaseFirestore.instance.collection("users").get();
    final users = usersMap.docs.map((e) => e).toList();
    String? targetedUserName;

    for (var user in users) {
      if (user.get("username") == usernameController.text.trim()) {
        targetedUserName = user.get("username");
        isValid = false;
        setState(() {});
      }
      if (usernameController.text.trim() != targetedUserName) {
        isValid = true;
        setState(() {});
      }
    }
  }

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController();
  }

  @override
  void dispose() {
    usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: 26.kh,
                horizontal: 14.kw,
              ),
              child: Text(
                "Enter your username",
                style: GoogleFonts.roboto(color: Colors.blueGrey),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.kh),
              child: Form(
                child: TextFormField(
                  onChanged: (value) {
                    valiateUsername();
                  },
                  autovalidateMode: AutovalidateMode.always,
                  validator: (value) {
                    return isValid ? null : "username already taken";
                  },
                  key: formKey,
                  controller: usernameController,
                  keyboardType: TextInputType.name,
                  autofillHints: const [
                    AutofillHints.username
                  ],
                  decoration: InputDecoration(
                    suffixIcon: isValid ? const Icon(Icons.verified_user_rounded) : const Icon(Icons.cancel),
                    suffixIconColor: isValid ? Colors.green : Colors.red,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    hintText: "Enter username ",
                    hintStyle: GoogleFonts.roboto(),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0.kw, vertical: 30.kh),
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: isValid ? Colors.green : Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16.kh),
                ),
                child: TextButton(
                  onPressed: () async {
                    isValid
                        ? await ref.read(userDataServiceProvider).addUserDataToFirestore(
                              displayName: widget.displayName,
                              username: usernameController.text,
                              email: widget.email,
                              description: "",
                              profilePic: widget.profilePic,
                            )
                        : null;
                  },
                  child: Text(
                    "CONTINUE",
                    style: GoogleFonts.roboto(
                      fontSize: 13.kh,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
