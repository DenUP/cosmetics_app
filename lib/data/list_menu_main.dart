import '../entity/list_menu.dart';

List<ListMenu> _listMenuMain = [
  ListMenu(title: 'Назначение', isStocks: false),
  ListMenu(title: 'Тип средства', isStocks: false),
  ListMenu(title: 'Тип кожи', isStocks: false),
  ListMenu(title: 'Линия косметики', isStocks: false),
  ListMenu(title: 'Наборы', isStocks: false),
  ListMenu(title: 'Акции', isStocks: true),
  ListMenu(title: 'Консультация\nс косметологом ', isStocks: false),
];

List<ListMenu> getListMenuMain() => _listMenuMain;
