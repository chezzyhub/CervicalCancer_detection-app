import 'package:flutter/material.dart';
import 'package:flutter_application_2/Pages/login.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class Prediction extends StatefulWidget {

  @override
  // ignore: library_private_types_in_public_api
  _PredictionState createState() => _PredictionState();
}

class _PredictionState extends State<Prediction> {
  final _formKey = GlobalKey<FormState>();
  late String _age;
  late String _numSexualPartners;
  late String _firstSexualIntercourse;
  late String _smokes;
  late String _smokesPerYear;
  late String _hormones;
  late String _contraceptives;
  late String _uid;
  // ignore: unused_field
  String _prediction = '';
  
  // ignore: prefer_typing_uninitialized_variables
  var value;

  // ignore: unused_element
  void _submitForm() async {
    // Send the user input data to the Flask API for prediction
    final response = await http.post(
      Uri.parse('http://localhost:5000/predict'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'age': _age,
        'num_sexual_partners': _numSexualPartners,
        'first_sexual_intercourse': _firstSexualIntercourse,
        'smokes': _smokes,
        'smokes_per_year': _smokesPerYear,
        'hormones': _hormones,
        'contraceptives': _contraceptives,
        'uid': _uid,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        _prediction = data['prediction'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: const Text('mapema best'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Age'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter age';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _age = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Number of sexual partners'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter number of sexual partners';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _numSexualPartners = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'First sexual intercourse'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter age at first sexual intercourse';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      _firstSexualIntercourse = value!;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Smokes'),
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter 1 if you smoke or 0 if you do not smoke';
                      }
                      return null;
                    },
                    onSaved: (value)
                  ),
                  ElevatedButton(
                    onPressed: () {
              //         Navigator.push(
              // context,
              // MaterialPageRoute(builder: (context) => (login_page)),
                      // Add logic to visit doctor here...
                     },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    child: const Text('VIEW RESULTS'),
                  ),
                  ElevatedButton(
                onPressed: () {
                  Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage()),
               ); }, 
                  //  Proceed and take a tet,
                child: const Text('Visit Doctor'),
              ),
              ],
            )
         ) ,
        ),
      );
  }
} 