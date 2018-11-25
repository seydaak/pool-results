import 'package:google_sign_in/google_sign_in.dart';

class Signer {
  static final GoogleSignIn google = GoogleSignIn(
    scopes: [
      'email',
      'https://www.googleapis.com/auth/contacts.readonly',
    ],
  );
}
