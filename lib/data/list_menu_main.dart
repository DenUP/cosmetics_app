import '../entity/list_menu.dart';

// Список - Каталог (Меню)

List<ListMenu> _listMenuMain = [
  ListMenu(title: 'Назначение', isStocks: false),
  ListMenu(title: 'Тип средства', isStocks: false),
  ListMenu(title: 'Тип кожи', isStocks: false),
  ListMenu(title: 'Линия косметики', isStocks: false),
  ListMenu(title: 'Наборы', isStocks: false),
  ListMenu(title: 'Акции', isStocks: true),
  ListMenu(title: 'Консультация\nс косметологом ', isStocks: false),
];

// Список - По типу кожи

List<ListMenu> getListMenuMain() => _listMenuMain;

List<ListMenu> _listTypeKozhi = [
  ListMenu(title: 'Жирная', isStocks: false),
  ListMenu(title: 'Комбинированная', isStocks: false),
  ListMenu(title: 'Нормальная', isStocks: false),
  ListMenu(title: 'Сухая', isStocks: false),
  ListMenu(title: 'Любой тип', isStocks: false),
];

List<ListMenu> getListTypeKozhi() => _listTypeKozhi;
