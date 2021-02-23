import '../domain/entities/my_list.dart';
import '../domain/repository/my_lists_repo_contract.dart';

class MyListsRepositoryMock extends MyListsRepositoryContract {
  @override
  void createList(MyList list) {
    print('list created! \n ${list.toString()}');
  }

  @override
  void deleteList(MyList list) {
    // TODO: implement deleteList
  }

  @override
  Stream<List<MyList>> fetchLists() {
    // TODO: implement fetchLists
    throw UnimplementedError();
  }

  @override
  void modifyList(MyList list) {
    // TODO: implement modifyList
  }
}
