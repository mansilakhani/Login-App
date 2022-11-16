import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fm_loginapp/screens/signin_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text("HomePage"),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xffCB2B93),
              Color(0xff9546C4),
              Color(0xff5E61F4),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              FirebaseAuth.instance.signOut().then(
                (value) {
                  print("Signed Out");
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInScreen()));
                },
              );
            },
            icon: Icon(Icons.logout),
          )
        ],
      ),

      backgroundColor: Colors.black,
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          "Welcome to HomePage 🙂 ...",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.w500),
        ),
      ),
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text("Logout"),
      //     onPressed: () {
      //       FirebaseAuth.instance.signOut().then(
      //         (value) {
      //           print("Signed Out");
      //           Navigator.push(context,
      //               MaterialPageRoute(builder: (context) => SignInScreen()));
      //         },
      //       );
      //     },
      //   ),
      // ),
    );
  }
}
