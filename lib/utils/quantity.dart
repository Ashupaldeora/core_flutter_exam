import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget quantitycontainer(int quantity) {
  return Container(
    height: 35,
    width: 35,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: Text("$quantity"),
  );
}
