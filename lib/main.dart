import 'package:firstapp/home_page.dart';
import 'package:firstapp/login_page.dart';
import 'package:firstapp/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
// import 'package:firebase_auth/firebase_auth.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Hide the debug logo on the top right
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const RootPage(),
    ); //Everything that starts with capital letter is a widget
  }
}

class RootPage extends StatefulWidget {
  //Screen refresh. Doesnt work with statelessWidget
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage =
      0; //put before the build, if inside build. It will keep on building and always have value
  List<Widget> pages = [
    HomePage(),
    const ProfilePage(),
    const LoginPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AZAZ'),
        leading: const Icon(Icons.add_alert_outlined),
      ),
      body: pages[
          currentPage], //go through pages, Home and Profile (Bottom Nav bar)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating action button');
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage, //bottom nav works fine now
      ),
    );
  }
}
