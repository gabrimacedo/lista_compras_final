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
  Stream<List<MyList>> fetchLists() async* {
    print('fetching lists...');

    // int i = 0;
    // while (i < 3) {
    //   await Future.delayed(const Duration(seconds: 2));
    //   yield List.generate(i + 1, (index) {
    //     return MyList.fake();
    //   });
    //   i++;
    // }
    yield [MyList.fake(), MyList.fake2()];

    print('stream ended!');
  }

  @override
  void modifyList(MyList list) {
    // TODO: implement modifyList
  }
}
