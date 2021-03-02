import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';

import 'di_container.dart';
import 'shopping_lists/view/cubit/custom_lists_cubit.dart';
import 'shopping_lists/view/cubit/list_selection_cubit.dart';
import 'shopping_lists/view/pages/create_list_page.dart';
import 'shopping_lists/view/pages/list_page.dart';

void main() async {
  runApp(MyApp());

  DependencyInjector.initialize();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  final diContainer = KiwiContainer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        CreateListPage.routeName: (_) => CreateListPage(),
      },
      home: Scaffold(
        body: InitialSetup(),
      ),
    );
  }
}

class InitialSetup extends StatelessWidget {
  const InitialSetup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CustomListsCubit>(create: (_) => CustomListsCubit()),
        BlocProvider<MyListSelectionCubit>(create: (_) => MyListSelectionCubit())
      ],
      child: BlocBuilder<CustomListsCubit, CustomListsState>(
        builder: (context, state) {
          print('build called!'); // TODO implement buildwhem!
          if (state is MyListsFetched) {
            return ListPageWidget(state.shoppingLists);
          } else if (state is MyListsEmpty) {
            return CreateListPage();
          }
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
