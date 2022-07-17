import 'package:firebase_auth/firebase_auth.dart';
import 'package:twitter_login/twitter_login.dart';

void twitter_login() async {
  final twitterLogin = new TwitterLogin(
      apiKey: 'PCOAAkiNdJrm1kKM8ITUghYCp',
      apiSecretKey: 'rxkFfWjtYacU1JmVYAvqXHreUakdZVkx8mAokmgu3sWzOGqBIO',
      redirectURI:
          'https://hostel-management-system-39162.firebaseapp.com/__/auth/handler');

  await twitterLogin.login().then((value) async {
    final twitterAuthCredential = TwitterAuthProvider.credential(
      accessToken: value.authToken!,
      secret: value.authTokenSecret!,
    );

    await FirebaseAuth.instance.signInWithCredential(twitterAuthCredential);
  });
}
