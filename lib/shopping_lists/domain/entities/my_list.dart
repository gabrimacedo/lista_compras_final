import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyList {
  final String name;
  final Color primaryColor;
  final Color secondaryColor;
  final Color onPrimary;
  final Color onSecondary;

  MyList({
    @required this.name,
    @required this.primaryColor,
    @required this.secondaryColor,
    @required this.onPrimary,
    @required this.onSecondary,
  });

  factory MyList.fromMap(Map<String, dynamic> map) {
    return MyList(
      name: map['name'],
      primaryColor: map['primaryColor'],
      secondaryColor: map['secondaryColor'],
      onPrimary: map['textColor'],
      onSecondary: map['onSecondary'],
    );
  }

  factory MyList.fake() {
    return MyList(
      name: 'Fake List',
      primaryColor: Colors.white,
      secondaryColor: Colors.red[200],
      onPrimary: Colors.black54,
      onSecondary: Colors.white,
    );
  }

  @override
  String toString() {
    return 'List:\n' +
        'name = $name\n' +
        'primary Color = $primaryColor\n' +
        'secondary Color = $secondaryColor\n' +
        'onPriamry = $onPrimary\n' +
        'onSecondary = $onSecondary\n';
  }
}
