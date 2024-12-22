import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String text;
  final bool background;
  final bool borderIsWhite;

  const AppButton({
    super.key,
    required this.text,
    required this.background,
    required this.borderIsWhite,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: background ? Colors.black : Colors.transparent,
            foregroundColor: background ? Colors.black : Colors.white,
            minimumSize: const Size(120, 36),
            padding: const EdgeInsets.all(10),
            side: BorderSide(
                color: borderIsWhite ? Colors.white : Colors.black, width: 1),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(3)))),
        onPressed: () {},
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w600,
              fontFamily: 'Raleway'),
        ));
  }
}
