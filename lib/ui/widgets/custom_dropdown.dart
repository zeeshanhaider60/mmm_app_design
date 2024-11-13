import 'package:flutter/material.dart';

class custom_dropdown extends StatefulWidget {
  final String? hintText;
  final String? value;
  final List<String> items;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final ValueChanged<String?>? onChanged;

  const custom_dropdown({
    Key? key,
    this.hintText,
    required this.items,
    this.value,
    this.validator,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
  }) : super(key: key);

  @override
  _custom_dropdownState createState() => _custom_dropdownState();
}

class _custom_dropdownState extends State<custom_dropdown> {
  FocusNode _focusNode = FocusNode();
  bool _isFocused = false;
  late String? _selectedValue;

  @override
  void initState() {
    super.initState();
    _selectedValue = widget.value;
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
    return GestureDetector(
      onTap: () {
        _focusNode.requestFocus();
        _showDropdown();
      },
      child: Container(
        width: 388,
        height: 48,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(4),
          ),
          border: Border.all(
            color: _isFocused ? Color(0xFF003366) : Color(0xFF8AA1B9),
            width: _isFocused ? 2 : 1,
          ),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButtonFormField<String>(
            focusNode: _focusNode,
            value: _selectedValue,
            onChanged: widget.onChanged,
            validator: widget.validator,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              border: InputBorder.none,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 11, horizontal: 10),
            ),
            items: widget.items.map((String item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            }).toList(),
            icon: SizedBox.shrink(),
          ),
        ),
      ),
    );
  }

  void _showDropdown() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          color: Colors.white,
          child: ListView(
            children: widget.items.map((String item) {
              return ListTile(
                title: Text(item),
                onTap: () {
                  setState(() {
                    _selectedValue = item;
                  });
                  widget.onChanged?.call(item);
                  Navigator.pop(context);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }
}
