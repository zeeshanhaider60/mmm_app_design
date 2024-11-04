import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class custom_code_confirmation_textformfield extends StatefulWidget {
  final TextEditingController? controller;
  final String? hintText;

  final bool obscureText;
  final double width;
  final double height;

  const custom_code_confirmation_textformfield({
    Key? key,
    this.controller,
    this.hintText,
    this.obscureText = false,
    this.width = 52,
    this.height = 52,
  }) : super(key: key);

  @override
  _custom_code_confirmation_textformfieldState createState() =>
      _custom_code_confirmation_textformfieldState();
}

class _custom_code_confirmation_textformfieldState
    extends State<custom_code_confirmation_textformfield> {
  FocusNode _focusNode = FocusNode();
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(_onFocusChange);
  }

  void _onFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(4),
        ),
        border: Border.all(
          color: _isFocused ? const Color(0xFF003366) : const Color(0xFF8AA1B9),
          width: _isFocused ? 2 : 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: TextFormField(
          focusNode: _focusNode,
          controller: widget.controller,
          obscureText: widget.obscureText,
          keyboardType: TextInputType.number,
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
          ],
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              fontSize: 14,
              color: Colors.grey,
            ),
            border: InputBorder.none,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          ),
        ),
      ),
    );
  }
}
