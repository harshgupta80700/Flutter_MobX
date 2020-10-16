import 'package:flutter/material.dart';

class TodoCard extends StatelessWidget {

  String name;
  String description;
  bool status;

  TodoCard({
    this.status,
    this.description,
    this.name
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: null,
      child: Container(
        margin: EdgeInsets.all(6),
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red,width: 3.0)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Name"),
                Text("Status")
              ],
            ),
            SizedBox(height: 10,),
            Text("description")
          ],
        ),
      ),
    );
  }
}
