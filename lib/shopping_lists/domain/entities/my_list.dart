import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../../list_items/domain/entities/list_item.dart';

class MyList {
  final List<MercadoItem> itemList;
  final String name;
  final Color primaryColor;
  final Color secondaryColor;
  final Color onPrimary;
  final Color onSecondary;

  MyList({
    @required this.itemList,
    @required this.name,
    @required this.primaryColor,
    @required this.secondaryColor,
    @required this.onPrimary,
    @required this.onSecondary,
  });

  factory MyList.fromMap(Map<String, dynamic> map) {
    return MyList(
      itemList: map['itemList'],
      name: map['name'],
      primaryColor: map['primaryColor'],
      secondaryColor: map['secondaryColor'],
      onPrimary: map['textColor'],
      onSecondary: map['onSecondary'],
    );
  }

  factory MyList.fake() {
    return MyList(
      itemList: [
        MercadoItem(listName: 'HORTIFRUTI', name: 'arroz', quantidade: 2, userName: 'gabriel'),
        MercadoItem(listName: 'HORTIFRUTI', name: 'feijão', quantidade: 3, userName: 'luisa'),
        MercadoItem(listName: 'HORTIFRUTI', name: 'cachorro quente', quantidade: 10, userName: 'patricia'),
      ],
      name: 'Fake List',
      primaryColor: Colors.white,
      secondaryColor: Colors.red[200],
      onPrimary: Colors.black54,
      onSecondary: Colors.white,
    );
  }

  factory MyList.fake2() {
    return MyList(
      itemList: [
        MercadoItem(listName: 'MERCADO', name: 'cebola', quantidade: 2, userName: 'gabriel'),
        MercadoItem(listName: 'MERCADO', name: 'macarrão', quantidade: 8, userName: 'Marcos'),
        MercadoItem(listName: 'MERCADO', name: 'papel higiênico', quantidade: 37, userName: 'patricia'),
      ],
      name: 'MERCADO',
      primaryColor: Colors.green[200],
      secondaryColor: Colors.white,
      onPrimary: Colors.black,
      onSecondary: Colors.black54,
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
