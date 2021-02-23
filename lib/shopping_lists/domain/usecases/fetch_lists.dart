import 'package:flutter/foundation.dart';

import '../entities/my_list.dart';
import '../repository/my_lists_repo_contract.dart';

class FecthLists {
  List<MyList> shoppingLists;
  final MyListsRepositoryContract repository;

  FecthLists({@required this.repository});

  List<MyList> execute() {
    repository.fetchLists().listen((event) {
      shoppingLists = event;
    });
    return shoppingLists;
  }
}
