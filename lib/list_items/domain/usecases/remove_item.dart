import 'package:flutter/foundation.dart';

import '../entities/list_item.dart';
import '../repositories/list_item_repo_contract.dart';

class RemoveItem {
  final ListItemRepositoryContract repository;

  RemoveItem({@required this.repository});

  void execute(MercadoItem item) {
    repository.deleteItem(item);
  }
}
