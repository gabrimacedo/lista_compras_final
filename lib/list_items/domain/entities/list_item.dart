import 'package:flutter/foundation.dart';

class ListItem {
  final String name;
  final int quantidade;
  final String userName;
  final String listName;

  ListItem({
    @required this.name,
    @required this.quantidade,
    @required this.userName,
    @required this.listName,
  });

  factory ListItem.fromMap(Map<String, dynamic> map) {
    return ListItem(
      name: map['name'],
      quantidade: map['quantidade'],
      userName: map['username'],
      listName: map['listName'],
    );
  }
}