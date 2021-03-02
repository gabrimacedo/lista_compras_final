import 'package:flutter/foundation.dart';

import '../entities/list_item.dart';
import '../repositories/list_item_repo_contract.dart';

class UpdateItem {
  final ListItemRepositoryContract repository;

  UpdateItem({@required this.repository});

  void execute(MercadoItem item) {
    repository.updateItem(item);
  }
}
