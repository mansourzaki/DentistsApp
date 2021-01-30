import 'package:flutter/material.dart';
import 'package:circular_check_box/circular_check_box.dart';
import 'package:intl/intl.dart';

class AppoinntmentCard extends StatefulWidget {
  final String name;
  final int age;
  final DateTime date;
  bool isDone;

  AppoinntmentCard({
    @required this.name,
    @required this.age,
    @required this.date,
    @required this.isDone,
  });
  @override
  _AppoinntmentCardState createState() => _AppoinntmentCardState();
}

class _AppoinntmentCardState extends State<AppoinntmentCard> {
  @override
  Widget build(BuildContext context) {
    final date = DateFormat('Hm').format(widget.date);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          height: 120,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${widget.name}',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  CircularCheckBox(
                      value: widget.isDone,
                      onChanged: (value) {
                        setState(() {
                          widget.isDone = value;
                        });
                      })
                ],
              ),
              Text(
                date,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black45),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                      onPressed: () {},
                      child: Text(
                        'Edit',
                        style: TextStyle(fontSize: 16),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
