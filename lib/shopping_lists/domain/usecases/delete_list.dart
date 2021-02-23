import 'package:flutter/foundation.dart';

import '../entities/my_list.dart';
import '../repository/my_lists_repo_contract.dart';

class DeleteList {
  final MyListsRepositoryContract repository;

  DeleteList({@required this.repository});

  void execute(MyList list) {
    repository.deleteList(list);
  }
}
