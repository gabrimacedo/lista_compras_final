import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:kiwi/kiwi.dart';
import 'package:lista_compras_final/shopping_lists/domain/usecases/create_list.dart';
import 'package:meta/meta.dart';

import '../../domain/entities/my_list.dart';

part 'custom_lists_state.dart';

class CustomListsCubit extends Cubit<CustomListsState> {
  CustomListsCubit() : super(FetchingLists());

  final diContainer = KiwiContainer();

  void createList() {
    diContainer.resolve<CreateList>().execute(MyList.fake());
  }

  void deleteList() {}

  void updateList() {}
}
