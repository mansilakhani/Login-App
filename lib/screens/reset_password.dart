import 'package:flutter/material.dart';

class ResetScreen extends StatefulWidget {
  const ResetScreen({Key? key}) : super(key: key);

  @override
  State<ResetScreen> createState() => _ResetScreenState();
}

class _ResetScreenState extends State<ResetScreen> {
  TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Reset Password",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffCB2B93),
            Color(0xff9546C4),
            Color(0xff5E61F4)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.fromLTRB(20, 120, 20, 0),
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                // reusableTextField("Enter Email Id", Icons.person_outline, false,
                //     _emailController),
                const SizedBox(
                  height: 20,
                ),
                // firebaseUIButton(context, "Reset Password", () {
                //   FirebaseAuth.instance
                //       .sendPasswordResetEmail(email: _emailController.text)
                //       .then((value) => Navigator.of(context).pop());
                // })
              ],
            ),
          ))),
    );
  }
}
