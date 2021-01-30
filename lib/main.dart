import 'package:dentist_app/screens/drawer_screen.dart';
import 'package:dentist_app/screens/mypatients_screen.dart';
import 'package:dentist_app/widgets/appointment_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      title: 'Dentist Patients Manager',
      
      routes: {
        '/'  : (context) => MyHomePage(),
        MyPatientsScreen.routName : (context) => MyPatientsScreen(), 
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Page'),
          elevation: 0,
        ),
        drawer: Drawer(
          child: DrawerScreen(),
        ),
        body: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              color: Colors.blue,
              padding: EdgeInsets.all(12),
                child: Text(
              'Today\'s Appointments',
              style: TextStyle(fontSize: 24),
            )),
            Expanded(
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (BuildContext context, i) => AppoinntmentCard(
                  name: 'Mansour Alhaddad',
                  age: 18,
                  date: DateTime.now(),
                  isDone: false,
                ),
              ),
            ),
          ],
        ));
  }
}
