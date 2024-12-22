import 'package:cosmetics_app/entity/question.dart';

final List<Question> _question = [
  Question(img: 'assets/img/questions/demakiyash.png', title: 'Демакияж'),
  Question(img: 'assets/img/questions/ochistka.png', title: 'Очищение'),
  Question(img: 'assets/img/questions/svorotka.png', title: 'Сыворотка'),
  Question(img: 'assets/img/questions/dnevnoi_krem.png', title: 'Дневной крем'),
];

List<Question> getQuestion() => _question;
