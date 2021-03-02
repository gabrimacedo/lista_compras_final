import 'package:lista_compras_final/list_items/domain/entities/list_item.dart';

abstract class ListItemRepositoryContract {
  void addItem(MercadoItem item);
  void deleteItem(MercadoItem item);
  void updateItem(MercadoItem item);
}