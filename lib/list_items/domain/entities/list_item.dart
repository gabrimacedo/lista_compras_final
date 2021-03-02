import 'package:flutter/foundation.dart';

class MercadoItem {
  final String name;
  final int quantidade;
  final String userName;
  final String listName;

  MercadoItem({
    @required this.name,
    @required this.quantidade,
    @required this.userName,
    @required this.listName,
  });

  factory MercadoItem.fromMap(Map<String, dynamic> map) {
    return MercadoItem(
      name: map['name'],
      quantidade: map['quantidade'],
      userName: map['username'],
      listName: map['listName'],
    );
  }
}
