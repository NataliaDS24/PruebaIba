import 'package:flutter/material.dart';
import 'package:pruebaibacrea/src/features/models/workpeople.dart';

class WorkpeopleDetails extends StatelessWidget {
  final workpeople;

  const WorkpeopleDetails({this.workpeople});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsets.only(top: 50, left: 50),
          height: 200,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.blueAccent),
          child: Column(
            children: [
              Row(
                children: [Text('Id:', style: TextStyle(fontWeight: FontWeight.bold),), Text('${workpeople.id}')],
              ),
              Row(
                children: [Text('Name:', style: TextStyle(fontWeight: FontWeight.bold),), Text(workpeople.name)],
              ),
              Row(
                children: [Text('Position:', style: TextStyle(fontWeight: FontWeight.bold),), Text(workpeople.position)],
              ),
              Row(
                children: [Text('Wage:', style: TextStyle(fontWeight: FontWeight.bold),), Text('${workpeople.wage}')],
              ),
              // Text(workpeople.wage),
              // Text(workpeople.employees),
            ],
          ),
        ));
  }
}
