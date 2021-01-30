import 'package:dentist_app/data/data.dart';
import 'package:dentist_app/screens/drawer_screen.dart';
import 'package:dentist_app/widgets/patient_card.dart';
import 'package:flutter/material.dart';

class MyPatientsScreen extends StatefulWidget {
  static const routName = 'myPatientsScreen';
  @override
  _MyPatientsScreenState createState() => _MyPatientsScreenState();
}

class _MyPatientsScreenState extends State<MyPatientsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Patients'),
          actions: [IconButton(icon: Icon(Icons.search), onPressed: () {})],
        ),
        drawer: Drawer(
          child: DrawerScreen(),
        ),
        body: ListView.separated(
          separatorBuilder: (context, i) => Divider(),
          itemCount: dummyPatients.length,
          itemBuilder: (BuildContext context, i) =>
              PatientCard(dummyPatients[i]),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ));
  }
}
