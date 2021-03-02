part of 'list_selection_cubit.dart';

abstract class MyListSelectionState extends Equatable {
  const MyListSelectionState();

  @override
  List<Object> get props => [];
}

class MyListSelectionInitial extends MyListSelectionState {}

class MyListSelected extends MyListSelectionState {
  final MyList selectedList;

  MyListSelected(this.selectedList);

  @override
  List<Object> get props => [selectedList];
}
