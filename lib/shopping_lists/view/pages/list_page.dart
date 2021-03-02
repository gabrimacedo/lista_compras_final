import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../list_items/domain/entities/list_item.dart';
import '../../domain/entities/my_list.dart';
import 'create_list_page.dart';

class ListPageWidget extends StatefulWidget {
  ListPageWidget(this._shoppingLists);

  static const routeName = '/MyListsPage';
  final List<MyList> _shoppingLists;
  final _titleStyle = const TextStyle(letterSpacing: 15, fontSize: 20);

  @override
  _ListPageWidgetState createState() => _ListPageWidgetState();
}

class _ListPageWidgetState extends State<ListPageWidget> {
  MyList _currentList;

  @override
  void initState() {
    super.initState();
    _currentList = widget._shoppingLists[0];
  }

  Widget _buildList() {
    return Container(
      child: ListView.builder(
        itemCount: _currentList.itemList.length,
        itemBuilder: (context, index) {
          return ListItemRow(mercadoItem: _currentList.itemList[index], list: _currentList);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _currentList.primaryColor,
      body: _buildList(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () => print('do something'),
            child: Icon(Icons.add),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: _currentList.secondaryColor,
        title: Text(
          _currentList.name,
          style: widget._titleStyle.copyWith(color: _currentList.onSecondary),
        ),
        actions: [
          IconButton(
            color: _currentList.onSecondary,
            icon: Icon(Icons.add),
            onPressed: () => Navigator.of(context).pushNamed(CreateListPage.routeName),
          ),
          PopupMenuButton<MyList>(
            icon: Icon(Icons.format_list_bulleted_outlined, color: _currentList.onSecondary),
            onSelected: (value) => setState(() {
              _currentList = value;
            }),
            itemBuilder: (context) => widget._shoppingLists
                .map((list) => PopupMenuItem<MyList>(
                      value: list,
                      child: ListTile(
                        title: Text(list.name),
                        leading: Icon(
                          Icons.view_list_outlined,
                          color: Colors.black,
                        ),
                      ),
                    ))
                .toList(),
          ),
        ],
      ),
    );
  }
}

class ListItemRow extends StatelessWidget {
  ListItemRow({this.mercadoItem, this.list});

  final MercadoItem mercadoItem;
  final MyList list;

  final _itemTextStyle = GoogleFonts.caveat(fontSize: 32);
  final _quantTextStyle = GoogleFonts.caveat(fontSize: 30);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: ListTile(
        title: Text(
          mercadoItem.name,
          style: _itemTextStyle.copyWith(color: list.onPrimary),
        ),
        subtitle: Text(mercadoItem.userName),
        trailing: Text(
          mercadoItem.quantidade.toString(),
          style: _quantTextStyle.copyWith(color: list.onPrimary),
        ),
      ),
    );
  }
}
