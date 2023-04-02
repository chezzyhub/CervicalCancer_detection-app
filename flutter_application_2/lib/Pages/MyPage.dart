import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  String _selectedLocation = '';
String _selectedHospital = '';
  
  List<String> _locations = [
    'Nairobi',
    'Mombasa',
    'Kisumu',
    'Eldoret',
    'Nakuru',
  ];
  List<String> _hospitals = [
    'Kenyatta National Hospital',
    'Aga Khan University Hospital',
    'Nairobi Hospital',
    'Moi Teaching and Referral Hospital',
    'Coast Provincial General Hospital',
    'Kisumu County Hospital',
    'Eldoret Hospital',
    'St. Luke Hospital',
    'Nakuru County Referral Hospital'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choose Your Location and Hospital'),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Choose Your Location',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            DropdownButton<String>(
              value: _selectedLocation,
              items: _locations.map((location) {
                return DropdownMenuItem(
                  value: location,
                  child: Text(location),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedLocation = newValue!;
                });
              },
            ),
            SizedBox(height: 20.0),
            const Text(
              'Choose Your Preferred Hospital',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 10.0),
            DropdownButton<String>(
              value: _selectedHospital,
              items: _hospitals.map((hospital) {
                return DropdownMenuItem(
                  value: hospital,
                  child: Text(hospital),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedHospital = newValue!;
                });
              },
            ),
          ],
        ),
      ),
    );
   } }