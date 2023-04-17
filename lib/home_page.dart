import 'package:firstapp/learn_flutter_page.dart';
import 'package:firstapp/login_page.dart';
import 'package:flutter/material.dart'; //always need this one
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_fonts/google_fonts.dart';

// import 'package:firebase_auth_project/auth.dart';
import 'auth.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async {
    await Auth().signOut();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 50),
          Center(
            child: Text(
              'Welcome to the SleepApp',
              style:
                  GoogleFonts.bebasNeue(fontSize: 28, color: Colors.deepPurple),
            ),
          ),
          const Center(
            child: SizedBox(
              height: 100,
            ),
          ),
          Center(
            child: Image.asset('images/friend2.png'),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const LoginPage();
                    },
                  ),
                );
              },
              child: const Text('Login'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) {
                      return const LearnFlutterPage(); //bring to Learn Flutter Page
                    },
                  ),
                );
              },
              child: const Text('FAQ'),
            ),
          ),
          // Center(
          //   child: Image.asset('images/friend.png'),
          // ),
          // Center(
          //   child: Image.asset('images/einstein.jpg'),
          // ),
        ],
      ),
    );
  }
}

// class HomePage extends State<HomePage>
