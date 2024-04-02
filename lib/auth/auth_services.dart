import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthService {
  signInWithGoogle() async {
    // Interactive Process
    final GoogleSignInAccount? user = await GoogleSignIn().signIn();
    // Obtain Details
    final GoogleSignInAuthentication auth = await user!.authentication;
    // Create new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: auth.accessToken,
      idToken: auth.idToken,
    );
    // Use credential to sign in
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}