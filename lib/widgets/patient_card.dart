import 'package:dentist_app/models/patient.dart';
import 'package:flutter/material.dart';

class PatientCard extends StatelessWidget {
  final Patient _patient;
  
  
  PatientCard(this._patient);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(),
      title: Text(_patient.name),
      subtitle: Text('Next Appointment on 22/02/2021'),
    );
  }
}