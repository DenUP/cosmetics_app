import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
  final String text;
  final Color background;
  final Color border;
  final bool textIsWhite;
  final double radius;
  final double textSize;
  final VoidCallback? onPressed;
  final FontWeight? fontWeight;

  const AppButton({
    super.key,
    required this.text,
    required this.background,
    required this.border,
    required this.textIsWhite,
    required this.radius,
    required this.textSize,
    this.onPressed,
    this.fontWeight,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            backgroundColor: widget.background,
            foregroundColor: widget.textIsWhite ? Colors.black : Colors.white,
            minimumSize: const Size(120, 36),
            padding: const EdgeInsets.all(10),
            side: BorderSide(color: widget.border, width: 1),
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.all(Radius.circular(widget.radius)))),
        onPressed: widget.onPressed ?? () {},
        child: Text(
          widget.text,
          style: TextStyle(
              color: widget.textIsWhite ? Colors.white : Colors.black,
              fontSize: widget.textSize,
              fontWeight: widget.fontWeight ?? FontWeight.w600,
              fontFamily: 'Raleway'),
        ));
  }
}
