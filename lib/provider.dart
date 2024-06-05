import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider for Firebase Auth state
final firebaseAuthProvider = StreamProvider<User?>((ref) {
  return FirebaseAuth.instance.authStateChanges();
});

// Provider for Firestore user data
final userProvider = StreamProvider<DocumentSnapshot<Map<String, dynamic>>>((ref) {
  final user = ref.watch(firebaseAuthProvider).value;
  if (user != null) {
    return FirebaseFirestore.instance.collection("users").doc(user.uid).snapshots();
  }
  return const Stream.empty();
});
