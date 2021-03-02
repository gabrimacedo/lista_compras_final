part of 'custom_lists_cubit.dart';

@immutable
abstract class CustomListsState extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchingMyLists extends CustomListsState {}

class MyListsEmpty extends CustomListsState {}

class MyListsFetched extends CustomListsState {
  final List<MyList> shoppingLists;

  MyListsFetched(this.shoppingLists);

  @override
  List<Object> get props => [shoppingLists];
}
