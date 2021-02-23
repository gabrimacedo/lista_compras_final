part of 'custom_lists_cubit.dart';

@immutable
abstract class CustomListsState extends Equatable {
  @override
  List<Object> get props => [];
}

class FetchingLists extends CustomListsState {}

class NoLists extends CustomListsState {}

class ListsFetched extends CustomListsState {
  final List<MyList> shoppingLists;

  ListsFetched(this.shoppingLists);

  @override
  List<Object> get props => [shoppingLists];
}
