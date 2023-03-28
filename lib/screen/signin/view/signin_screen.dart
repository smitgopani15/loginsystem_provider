import 'package:flutter/material.dart';
import '../../../utils/sp.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({Key? key}) : super(key: key);

  @override
  State<SigninScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<SigninScreen> {
  TextEditingController emailc = TextEditingController();
  TextEditingController passwordc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: false,
          title: Text(
            "Sign In",
            style: TextStyle(fontSize: 20),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailc,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black45,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  hintText: "Email",
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.black45,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                controller: passwordc,
                cursorColor: Colors.black,
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black45,
                      width: 3,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 3,
                    ),
                  ),
                  hintText: "Password",
                  suffixIcon: Icon(
                    Icons.lock,
                    color: Colors.black45,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Don't have an account ?"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'signup_screen');
                    },
                    child: Text("Sign up"),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () async {
                  var email = emailc.text;
                  var password = passwordc.text;

                  Sp sp = Sp();
                  Map m1 = await sp.readSp();

                  if (email == m1['e1'] && password == m1['p1']) {
                    sp.saveSp(emailc.text, passwordc.text, true);
                    Navigator.pushReplacementNamed(context, 'home_screen');
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("Invalid user !"),
                      ),
                    );
                  }
                  emailc.clear();
                  passwordc.clear();
                },
                child: Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.black,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
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
