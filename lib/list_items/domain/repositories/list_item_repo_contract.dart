import 'package:lista_compras_final/list_items/domain/entities/list_item.dart';

abstract class ListItemRepositoryContract {
  void addItem(ListItem item);
  void deleteItem(ListItem item);
  void updateItem(ListItem item);
}