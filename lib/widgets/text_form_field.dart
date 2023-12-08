import 'package:flutter/material.dart';

class TextFormFieldWidget extends StatefulWidget {
  var controller = TextEditingController();
  TextFormFieldWidget({super.key, required this.controller});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: IconButton(onPressed: (){

        }, icon: const Icon(Icons.add)),
        filled: true,
        fillColor: Colors.grey.shade300,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
