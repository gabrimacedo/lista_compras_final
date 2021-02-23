import '../entities/my_list.dart';

abstract class MyListsRepositoryContract {
  void createList(MyList list);
  void deleteList(MyList list);
  void modifyList(MyList list);
  Stream<List<MyList>> fetchLists();
}
