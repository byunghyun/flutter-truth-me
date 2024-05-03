import 'package:flutter/material.dart';

class TruthTextButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;

  const TruthTextButton({Key? key, required this.buttonText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: Colors.amberAccent,
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    );
  }
}
