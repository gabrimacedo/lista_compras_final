import 'package:flutter/foundation.dart';

import '../entities/my_list.dart';
import '../repository/my_lists_repo_contract.dart';

class ModifyList {
  final MyListsRepositoryContract repository;

  ModifyList({@required this.repository});

  void execute(MyList list) {
    repository.modifyList(list);
  }
}
