import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'package:test_firebase/pages/sigInPage.dart';
import 'package:test_firebase/pages/home_page.dart';

class AuthHundle extends StatelessWidget {
  const AuthHundle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return new CircularProgressIndicator();
          } else {
            if (snapshot.hasData) {
              return new HomePages();
            }
            return new SigInPage();
          }
        });
  }
}
