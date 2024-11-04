import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class custom_elevated_button_small_width_white extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  custom_elevated_button_small_width_white(
      {required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        minimumSize: Size(160, 35),
        padding: EdgeInsets.fromLTRB(0, 17, 0, 19),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(8),
            bottomLeft: Radius.circular(8),
            bottomRight: Radius.circular(8),
            topRight: Radius.circular(8),
          ),
          side: BorderSide(
            color: Color(0xFF1B4965),
            width: 1,
          ),
        ),
        elevation: 0,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: Color(0xFF1B4965),
            fontWeight: FontWeight.w600,
            fontSize: 16),
      ),
    );
  }
}
