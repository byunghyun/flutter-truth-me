import 'package:flutter/material.dart';

class TruthMenuButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback? onPressed;


  const TruthMenuButton({Key? key, required this.buttonText, this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        foregroundColor: Colors.white,
        backgroundColor: Colors.amberAccent,
      ),
      onPressed: onPressed ?? () {},
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 18,
        ),
      ),
    );
  }
}
