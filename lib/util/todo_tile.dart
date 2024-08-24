// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoTile extends StatelessWidget {
  ToDoTile(
      {super.key,
      required this.taskName,
      required this.taskCmpltd,
      required this.onChanged,
      required this.deleteFunction});

  final String taskName;
  final bool taskCmpltd;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red.shade300,
              borderRadius: BorderRadius.circular(15),
            )
          ],
        ),
        child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 236, 212, 0),
                borderRadius: BorderRadius.circular(15)),
            child: Row(
              children: [
                Checkbox(
                  value: taskCmpltd,
                  onChanged: onChanged,
                  activeColor: Colors.black,
                ),
                Expanded(
                  child: Text(
                    taskName,
                    style: TextStyle(
                        decoration: taskCmpltd
                            ? TextDecoration.lineThrough
                            : TextDecoration.none),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
