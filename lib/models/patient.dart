import 'package:dentist_app/models/appointment.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Patient {
  final String firstName;
  final String lastName;
  final DateTime dateOfBirth;
  final String gender;
  List<Appointment> appointmentslist;
  String phoneNumber;
  //String _notes = "";
  //String _dentalHistory;
  //List<String> _gallery;
  //int _age;
  Patient({
    @required this.firstName,
    @required this.lastName,
    @required this.dateOfBirth,
    @required this.gender,
  });

  String get getDateOfBirth => DateFormat("yMMMMd").format(dateOfBirth);

  String get name => firstName + " " + lastName;
  List<Appointment> get appointmentsList => [...appointmentslist];

  addNewAppointment(Appointment appointmnt) {
    appointmentslist.add(appointmnt);
  }

  set setPhoneNumber(String phoneNumber) => this.phoneNumber = phoneNumber;

  int get age {
    return DateTime.now().year - dateOfBirth.year;
  }
}
