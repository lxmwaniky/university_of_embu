import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWithGoogle() async {
    // Interactive Process
    final GoogleSignInAccount? gUser = await GoogleSignIn().signIn();
    // Obtain Details
    final GoogleSignInAuthentication gAuth = await gUser!.authentication;
    // Create new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: gAuth.accessToken,
      idToken: gAuth.idToken,
    );
    // Use credential to sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}