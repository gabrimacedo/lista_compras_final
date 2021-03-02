import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../domain/entities/my_list.dart';

part 'list_selection_state.dart';

class MyListSelectionCubit extends Cubit<MyListSelectionState> {
  MyListSelectionCubit() : super(MyListSelectionInitial());

  void selectMyList(MyList selectedList) {
    emit(MyListSelected(selectedList));
  }
}
