import 'package:flutter/material.dart';
import '../../../utils/sp.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Welcome !",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 50,
                ),
              ),
              TextButton(
                onPressed: () {
                  Sp sp = Sp();
                  sp.clearSp();
                  Navigator.pushReplacementNamed(context, 'signin_screen');
                },
                child: Text(
                  "Delete account",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
