import 'package:flutter/material.dart';

class elevated_button_filter extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  elevated_button_filter({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF1B4965),
          minimumSize: Size(186, 48),
          padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4),
              bottomLeft: Radius.circular(4),
              bottomRight: Radius.circular(4),
              topRight: Radius.circular(4),
            ),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w500, fontSize: 16),
        ),
      ),
    );
  }
}
