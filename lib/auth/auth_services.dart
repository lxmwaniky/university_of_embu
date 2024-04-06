import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:university_of_embu/pages/login_page.dart';

class AuthService {
  Future<UserCredential?> signInWithGoogle() async {
    try {
      // Interactive Process
      final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
      if (gUser == null) {
        return null;
      }
      // Obtain Details
      final GoogleSignInAuthentication gAuth = await gUser.authentication;
      // Create new credential
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: gAuth.accessToken,
        idToken: gAuth.idToken,
      );
      // Use credential to sign in
      return await FirebaseAuth.instance.signInWithCredential(credential);
    } catch (e) {
      // print(e);
      return null;
    }
  }

  Future<void> signOutAndClearCache(BuildContext context) async {
    try {
      await AuthService().signOutAndClearCache(
          context); // Call the method to sign out and clear cache
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => LoginPage(),
        ),
      );
    } catch (e) {
      // print('Error signing out: $e');
    }
  }
}
