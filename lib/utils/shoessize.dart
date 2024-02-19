import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

List size = [32, 33, 44, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45];

Widget sizecontainers(int size) {
  return Container(
    height: 15,
    width: 15,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: Text("$size"),
  );
}
