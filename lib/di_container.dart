import 'package:kiwi/kiwi.dart';

import 'shopping_lists/data/lists_repo_mock.dart';
import 'shopping_lists/domain/usecases/create_list.dart';
import 'shopping_lists/domain/usecases/delete_list.dart';
import 'shopping_lists/domain/usecases/modify_list.dart';

final container = KiwiContainer();

class DependencyInjector {
  DependencyInjector.initialize() {
    print('initialinzing DI Container..');
    init();
  }

  void init() {
    // Shopping Lists Repository
    final listsRepository = MyListsRepositoryMock();

    // use cases
    container.registerInstance(CreateList(repository: listsRepository));
    container.registerInstance(DeleteList(repository: listsRepository));
    container.registerInstance(ModifyList(repository: listsRepository));
  }
}
