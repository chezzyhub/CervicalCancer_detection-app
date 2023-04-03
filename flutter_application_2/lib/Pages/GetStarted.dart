// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/info.dart';

void main() => runApp(getstarted());

class getstarted extends StatelessWidget {
  const getstarted({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final backgroundImage = AssetImage('assets/image.jpeg');
    final buttonColor = Color.fromARGB(255, 33, 243, 205);
    final buttonText = 'Get Started';

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(
              image: backgroundImage,
              fit: BoxFit.cover,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => CervicalCancerInfoScreen()),
                  // TODO: Implement button action
              );},
                style: ElevatedButton.styleFrom(
                  primary: buttonColor,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50.0,
                    vertical: 20.0,
                  ),
                ),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
