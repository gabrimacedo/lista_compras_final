import 'package:flex_color_picker/flex_color_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CreateListPage extends StatefulWidget {
  CreateListPage({Key key}) : super(key: key);

  static const String routeName = '/createListRoute';
  final _titleStyle = const TextStyle(letterSpacing: 10, fontSize: 15);
  final _itemTextStyle = GoogleFonts.caveat(fontSize: 32);
  final _quantTextStyle = GoogleFonts.caveat(fontSize: 30);

  @override
  _CreateListPageState createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> {
  Color _primaryColor = Colors.white;
  Color _secondaryColor = Colors.green[200];
  Color _onPrimary = Colors.black;
  Color _onSecondary = Colors.black;
  Color _crossedItemColor = Colors.black38;
  String _listName = 'NOME DA LISTA';

  double _cp1Height;
  double _cp2Height;
  double _cp3Height;
  double _cp4Height;
  double _cp5Height;

  String _currentRadioPick = 'backColor';

  Widget _colorConfigTile({@required String title, @required Color pickedColor, @required VoidCallback callBack}) {
    return ListTile(
      title: Text(title),
      trailing: IconButton(
        onPressed: callBack,
        icon: Container(
          width: 31.0,
          height: 31.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.black),
          ),
          child: CircleAvatar(
            radius: 14.0,
            backgroundColor: pickedColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _primaryColor,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      appBar: AppBar(
        iconTheme: IconThemeData(color: _onSecondary),
        title: Text(
          _listName,
          style: widget._titleStyle.copyWith(color: _onSecondary),
        ),
        backgroundColor: _secondaryColor,
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('CRIAR', style: widget._titleStyle.copyWith(color: _onSecondary)),
        onPressed: () => print('FAB pressed'),
        isExtended: true,
        backgroundColor: _secondaryColor,
      ),
      body: Container(
        child: Column(
          children: [
            Flexible(
              flex: 2,
              child: ListTile(
                title: Text('Item de Mercado', style: widget._itemTextStyle.copyWith(color: _onPrimary)),
                trailing: Text('x99', style: widget._quantTextStyle.copyWith(color: _onPrimary)),
              ),
            ),
            ListTile(
              title: Text(
                'Item Riscado',
                style: widget._itemTextStyle.copyWith(
                  color: _crossedItemColor,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
              trailing: Text('x99', style: widget._quantTextStyle.copyWith(color: _crossedItemColor)),
            ),
            Flexible(
              flex: 7,
              child: Container(
                padding: EdgeInsets.all(8.0),
                margin: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                width: double.infinity,
                decoration: BoxDecoration(border: Border.all()),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    TextFormField(
                      initialValue: _listName,
                      onChanged: (value) => setState(() => _listName = value.toUpperCase()),
                    ),
                    _colorConfigTile(
                      title: 'Cor de Fundo',
                      pickedColor: _primaryColor,
                      callBack: null,
                    ),
                    Container(
                      height: _cp1Height,
                      child: ColorPicker(
                        borderRadius: 15.0,
                        elevation: 10.0,
                        height: 30,
                        width: 30,
                        color: _primaryColor,
                        onColorChanged: (color) => setState(() => _primaryColor = color),
                        subheading: Text('Tons'),
                        pickerTypeLabels: {
                          ColorPickerType.primary: 'Cor',
                          ColorPickerType.accent: 'Cor Forte',
                          ColorPickerType.bw: 'Preto & Branco',
                        },
                        pickersEnabled: {
                          ColorPickerType.accent: true,
                          ColorPickerType.primary: true,
                          ColorPickerType.both: false,
                          ColorPickerType.bw: true,
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
