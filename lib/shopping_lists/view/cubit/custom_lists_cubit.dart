import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kiwi/kiwi.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/my_list.dart';
import '../../domain/usecases/create_list.dart';
import '../../domain/usecases/fetch_lists.dart';

part 'custom_lists_state.dart';

class CustomListsCubit extends Cubit<CustomListsState> {
  CustomListsCubit() : super(FetchingMyLists()) {
    diContainer.resolve<FecthLists>().execute().listen((lists) {
      print(lists.isEmpty);
      if (lists.isNotEmpty) {
        emit(MyListsFetched(lists));
      } else {
        emit(MyListsEmpty());
      }
    });
  }

  final diContainer = KiwiContainer();

  void createList() {
    diContainer.resolve<CreateList>().execute(MyList.fake());
  }

  void deleteList() {}

  void updateList() {}
}
