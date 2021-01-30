import 'package:dentist_app/screens/mypatients_screen.dart';
import 'package:dentist_app/shared/constants.dart';
import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        DrawerHeader(
          child: Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.all(1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(

                ),
                SizedBox(height: 10,),
                Text('Doctor\'s Name',style: TextStyle(fontSize: 20),),
              ],
            ),
          ),
          decoration: BoxDecoration(color: Colors.blue),
        ),
        ListTile(
          title: Text('Home',style: textStyle1,),
          leading: Icon(Icons.home),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('My Appoinments',style: textStyle1,),
          leading: Icon(Icons.calendar_today),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('My Patients',style: textStyle1,),
          leading: Icon(Icons.people),
          onTap: () {
            Navigator.of(context).pushReplacementNamed(MyPatientsScreen.routName);
          },
        ),
        Divider(),
      ],
    );
  }
}
