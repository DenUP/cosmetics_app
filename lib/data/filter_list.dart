import '../entity/filter.dart';

final List<Filter> _filterList = [
  Filter(name: 'Сортировка', value: 'По популярности'),
  Filter(name: 'Тип кожи', value: 'Жирная'),
  Filter(name: 'Тип средства', value: 'Все'),
  Filter(name: 'Проблема кожи', value: 'Не выбрано'),
  Filter(name: 'Эффект средства', value: 'Увлаженение'),
  Filter(name: 'Линия косметики', value: 'Все'),
];

List<Filter> getFilterList() => _filterList;
