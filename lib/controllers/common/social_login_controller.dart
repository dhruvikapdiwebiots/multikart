import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../config.dart';

class SocialLoginController extends GetxController {
  bool isLoading = false;
  final storage = GetStorage();
  final fb = FacebookLogin();

  //show loader
  void showLoading() {
    isLoading = true;
    update();
  }

  //hide loader
  void hideLoading() {
    isLoading = false;
    update();
  }

  //facebook login function
  Future<Resource?> facebookLogin() async {
    // Trigger the sign-in flow
    var firebaseAuth = FirebaseAuth.instance;
    try {
      final res = await fb.logIn(permissions: [
        FacebookPermission.publicProfile,
        FacebookPermission.email,
      ]);

      // Check result status
      switch (res.status) {
        case FacebookLoginStatus.success:
        // Logged in

        // Send access token to server for validation and auth
          final FacebookAccessToken? accessToken = res.accessToken;
          print('Access token: ${accessToken?.token}');
          final facebookAuthCred =
          FacebookAuthProvider.credential(accessToken!.token);
          // Get profile data
          final profile = await fb.getUserProfile();
          print('Hello, ${profile?.name}! You ID: ${profile?.userId}');

          final user =
              (await firebaseAuth.signInWithCredential(facebookAuthCred)).user;
          saveData(user!.uid);

          break;
        case FacebookLoginStatus.cancel:
        // User cancel log in

          break;
        case FacebookLoginStatus.error:
        // Log in failed
          print('Error while log in: ${res.error}');
          break;
      }
    } on FirebaseAuthException catch (e) {
      isLoading = false;

      rethrow;
    }
    return null;
  }

  //google Login function
  googleLogin() async {
    showLoading();
    update();
    final FirebaseAuth auth = FirebaseAuth.instance;
    final GoogleSignIn googleSignIn = GoogleSignIn();

    try {
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      (await auth.signInWithCredential(credential)).user;
      hideLoading();
      update();
      saveData(googleSignInAccount.id);
      Get.toNamed(routeName.dashboard);
    } on FirebaseAuthException catch (e) {
      hideLoading();
      update();
      showToast(e.toString());
      rethrow;
    } finally {
      hideLoading();
      update();
    }
  }

  //save data in shared pref
  saveData(userid) async {
    await storage.write('id', userid);
    update();
    Get.toNamed(routeName.dashboard);
  }

  //show toast
  showToast(error) {
    Fluttertoast.showToast(msg: error);
  }

}

class Resource{

  final Status status;
  Resource({required this.status});
}

enum Status {
  success,
  error,
  cancelled
}