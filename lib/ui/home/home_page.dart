import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:pool_results/signer.dart';
import 'package:pool_results/ui/home/widgets/navigation_bar.dart';
import 'package:pool_results/ui/home/widgets/pool_button.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  GoogleSignInAccount _account;

  @override
  void initState() {
    super.initState();

    Signer.google.signIn().then((account) {
      setState(() {
        _account = account;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: PoolButton(
        onPressed: () {},
      ),
      bottomNavigationBar: NavigationBar(
        onPoolsPressed: () {},
        onQRScanPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GoogleUserCircleAvatar(identity: _account),
            Text(_account == null ? "" : _account.displayName)
          ],
        ),
      ),
    );
  }
}
