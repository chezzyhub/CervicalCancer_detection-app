import 'package:flutter/material.dart';
import 'package:flutter_application_2/imports/import.dart';

class CervicalCancerInfoScreen extends StatelessWidget {
  @override
 
  Widget build(BuildContext context) {
    final buttonColor = Colors.blue;

    return Scaffold(
      appBar: AppBar(
        title: Text('Cervical Cancer Information'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What is Cervical Cancer?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Cervical cancer is a type of cancer that develops in the cells of the cervix, which is the lower part of the uterus that connects to the vagina. It is usually caused by the human papillomavirus (HPV), which is a common sexually transmitted infection.',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Risk Factors:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '- Early sexual activity\n'
              '- Multiple sexual partners\n'
              '- Smoking\n'
              '- Weakened immune system\n'
              '- Long-term use of birth control pills\n'
              '- Family history of cervical cancer',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 20.0),
            Text(
              'Prevention:',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '- Practice safe sex\n'
              '- Limit the number of sexual partners\n'
              '- Get vaccinated against HPV\n'
              '- Get regular cervical cancer screenings',
              style: TextStyle(fontSize: 16.0),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Prediction()),
               ); }, 
                  // TODO: Proceed and take a tet,
                child: const Text('Take a test now'),
              ),
          ],
        ),
      ),
    );
  }
}



