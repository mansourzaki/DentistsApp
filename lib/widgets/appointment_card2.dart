import 'package:flutter/material.dart';

class AppointmentCard2 extends StatefulWidget {
  final String name;
  final int age;
  final DateTime date;
  bool isDone;

  AppointmentCard2({
    @required this.name,
    @required this.age,
    @required this.date,
    @required this.isDone,
  });
  @override
  _AppointmentCard2State createState() => _AppointmentCard2State();
}

class _AppointmentCard2State extends State<AppointmentCard2> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      value: widget.isDone,
      onChanged: (value) {},
      title: Text(
        '${widget.name}',
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
                '${widget.date}',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              
    );
  }
}
