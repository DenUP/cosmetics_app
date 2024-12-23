import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final Color background;
  final Color border;
  final bool textIsWhite;
  final double radius;
  final double textSize;

  const AppButton({
    super.key,
    required this.text,
    required this.background,
    required this.border,
    required this.textIsWhite,
    required this.radius,
    required this.textSize,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: background,
            foregroundColor: textIsWhite ? Colors.black : Colors.white,
            minimumSize: const Size(120, 36),
            padding: const EdgeInsets.all(10),
            side: BorderSide(color: border, width: 1),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius)))),
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(
              color: textIsWhite ? Colors.white : Colors.black,
              fontSize: textSize,
              fontWeight: FontWeight.w600,
              fontFamily: 'Raleway'),
        ));
  }
}
