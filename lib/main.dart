import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flut_tube/core/widgets/loader.dart';
import 'package:flut_tube/features/auth/pages/login_page.dart';
import 'package:flut_tube/features/auth/pages/username_page.dart';
import 'package:flut_tube/firebase_options.dart';
import 'package:flut_tube/home_page.dart';
import 'package:flut_tube/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

double height = 0;
double width = 0;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return ProviderScope(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'FlutTube',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
          scaffoldBackgroundColor: Colors.white,
          useMaterial3: true,
        ),
        home: const AuthChecker(),
      ),
    );
  }
}

class AuthChecker extends ConsumerWidget {
  const AuthChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(firebaseAuthProvider);

    return authState.when(
      data: (user) {
        if (user == null) {
          return const LoginPage();
        } else {
          return const UserChecker();
        }
      },
      loading: () => const Loader(),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}

class UserChecker extends ConsumerWidget {
  const UserChecker({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userSnapshot = ref.watch(userProvider);

    return userSnapshot.when(
      data: (snapshot) {
        final user = FirebaseAuth.instance.currentUser;
        if (!snapshot.exists) {
          return UsernamePage(
            displayName: user!.displayName!,
            email: user.email!,
            profilePic: user.photoURL!,
          );
        } else {
          return const HomePage();
        }
      },
      loading: () => const Loader(),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
