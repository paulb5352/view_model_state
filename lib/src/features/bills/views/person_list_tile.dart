import 'package:flutter/material.dart';
import '../../../core/config/person.dart';
import '../../../core/config/app_colors.dart';

Widget _circularSpot(String id) {

  return CircleAvatar(
      backgroundColor: kcBrand04Color,
      maxRadius: 15,
      minRadius: 10,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Text(
          id,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 11,
          ),
        ),
      ));
}

Widget getPersonTile(Person person){
  return ListTile(
    leading: _circularSpot(person.id.toString()),
    title: Text(person.name),
    trailing: _circularSpot(person.category),
  );
}