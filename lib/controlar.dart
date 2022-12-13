import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

class controolar extends GetxController {
  final googleSignIn = GoogleSignIn();

  GoogleSignInAccount? _user;

  // GoogleSignInAccount? Get => _user!;

  googlelogin() async {
    final googleUser = await googleSignIn.signIn();
    if (googleUser == null) return _user = googleUser;

    final googleauth = await googleUser.authentication;

    final Credential = GoogleAuthProvider.credential(
        accessToken: googleauth.accessToken, idToken: googleauth.idToken);

    await FirebaseAuth.instance.signInWithCredential(Credential);
  }
}
