import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kiwi/kiwi.dart';
import 'package:lista_compras_final/shopping_lists/view/cubit/custom_lists_cubit.dart';

import 'di_container.dart';

void main() {
  runApp(MyApp());

  DependencyInjector.initialize();
}

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);

  final diContainer = KiwiContainer();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      ],
      child: Center(
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FloatingActionButton(
        onPressed: () => context.read<CustomListsCubit>().createList(),
        child: Icon(Icons.add),
      ),
    );
  }
}
