// ignore_for_file: library_private_types_in_public_api

import 'package:coding_education_mobile/views/contains/style.dart';
import 'package:flutter/material.dart';

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String? _selectedOption;

  @override
  void initState() {
    super.initState();
    _selectedOption =
        'This Week'; // thiết lập giá trị ban đầu cho _selectedOption
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      underline: Container(
        height: 0,
        color: Colors.black,
      ),
      icon: const Icon(
        Icons.expand_circle_down_outlined,
        color: kBlueColor,
      ),
      iconSize: 24,
      autofocus: true,
      hint: Text(
        _selectedOption!,
        style: const TextStyle(color: Colors.green),
      ), // sử dụng giá trị của _selectedOption làm hint
      value: _selectedOption,
      onChanged: (newValue) {
        setState(() {
          _selectedOption = newValue;
        });
      },
      items: const [
        DropdownMenuItem(
          value: 'This Week',
          child: Text(
            'This Week',
            style: TextStyle(color: kBlueColor),
          ),
        ),
        DropdownMenuItem(
          value: 'This Month',
          child: Text(
            'This Month',
            style: TextStyle(color: kBlueColor),
          ),
        ),
        DropdownMenuItem(
          value: 'This Year',
          child: Text(
            'This Year',
            style: TextStyle(color: kBlueColor),
          ),
        ),
      ],
    );
  }
}
