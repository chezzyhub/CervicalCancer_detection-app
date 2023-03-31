import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_2/Pages/MyPage.dart';
import 'package:flutter_application_2/Pages/SignUp.dart';



class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Future<Widget> build(BuildContext context) async {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _signInWithEmailAndPassword(BuildContext context) async {

try {
  // Perform Firebase authentication
} on FirebaseAuthException catch (e) {
  if (e.code == 'user-not-found') {
    print('No user found for that email.');
  } else if (e.code == 'wrong-password') {
    print('Wrong password provided for that user.');
  } else {
    print('An error occurred: ${e.message}');
  }
} catch (e) {
  print('An unexpected error occurred: $e');
}

  void _navigateToSignUp(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/sign-up');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Log In'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _emailController,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Password',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyPage()),
               ); }, 
                  // TODO: Proceed and take a tet,
                child: const Text('Log in'),
          ),
          ElevatedButton(
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SignUpPage()),
               ); }, 
                  // TODO: Proceed and take a tet,
                child: const Text('Sign Up'),
                
              ),
        ],
            ),
        );}}}}