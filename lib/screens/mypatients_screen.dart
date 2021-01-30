import 'package:dentist_app/data/data.dart';
import 'package:dentist_app/models/patient.dart';
import 'package:dentist_app/screens/drawer_screen.dart';
import 'package:dentist_app/widgets/patient_card.dart';
import 'package:flutter/material.dart';

class MyPatientsScreen extends StatefulWidget {
  static const routName = 'myPatientsScreen';

  @override
  _MyPatientsScreenState createState() => _MyPatientsScreenState();
}

class _MyPatientsScreenState extends State<MyPatientsScreen> {
  List<Patient> filteredPatients = [];
  
  bool _searching = false;

  @override
  void initState() {
    List<Patient> patients = filteredPatients = dummyPatients;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: !_searching
              ? Text('My Patients')
              : TextFormField(
                cursorColor: Colors.white,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search for patient',

                  ),
                  onChanged: (value){
                    print(value);
                   setState(() {
                      filteredPatients.where((patient) => patient.name.toLowerCase().contains(value.toLowerCase())).toList();
                   });
                  },
                ),
          actions: [
            IconButton(
              icon: _searching ? Icon(Icons.close) : Icon(Icons.search),
              onPressed: () {
                setState(() {
                  _searching = !_searching;
                  
                });
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: DrawerScreen(),
        ),
        body: ListView.separated(
          separatorBuilder: (context, i) => Divider(),
          itemCount: dummyPatients.length,
          itemBuilder: (BuildContext context, i) =>
              PatientCard(filteredPatients[i])
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            // showModalBottomSheet(
            //   context: context,
            //   builder: (BuildContext context) =>
            //       BottomSheet(onClosing: (){}, builder:(BuildContext context) => AddNewPatientDialog()),
            // );
            // showDialog(context: context,builder: (BuildContext context){
            //   return AddNewPatientDialog();
            // }
            // );
          },
        ));
  }
}
