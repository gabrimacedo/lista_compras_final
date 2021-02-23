import 'package:flutter/foundation.dart';

import '../entities/my_list.dart';
import '../repository/my_lists_repo_contract.dart';

class CreateList {
  final MyListsRepositoryContract repository;

  CreateList({@required this.repository});

  void execute(MyList list) {
    repository.createList(list);
  }
}
