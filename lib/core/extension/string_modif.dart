// Добавляю к цене букву "Р"
extension StringModif on String {
  String rubString() {
    return '${substring(0)}${' ₽'}';
  }
}
