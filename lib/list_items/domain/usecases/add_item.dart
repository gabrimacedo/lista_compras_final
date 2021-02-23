import 'package:flutter/foundation.dart';

import '../entities/list_item.dart';
import '../repositories/list_item_repo_contract.dart';

class AddItem {
  final ListItemRepositoryContract repository;

  AddItem({@required this.repository});

  void execute(ListItem item) {
    repository.addItem(item);
  }
}
