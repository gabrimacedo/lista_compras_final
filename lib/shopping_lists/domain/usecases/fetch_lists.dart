import 'package:flutter/foundation.dart';

import '../entities/my_list.dart';
import '../repository/my_lists_repo_contract.dart';

class FecthLists {
  final MyListsRepositoryContract _repository;

  FecthLists({@required MyListsRepositoryContract repository}) : this._repository = repository;

  Stream<List<MyList>> execute() {
    return _repository.fetchLists();
  }
}
