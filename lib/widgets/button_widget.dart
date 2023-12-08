import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonWidget extends StatefulWidget {
  final Color color;
  final String text;
  final Color txtColor;
  const ButtonWidget(
      {super.key,
      required this.color,
      required this.text,
      required this.txtColor});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: width,
        height: height / 17,
        decoration: BoxDecoration(
            color: widget.color, borderRadius: BorderRadius.circular(10)),
        child: Center(
          child: Text(
            widget.text,
            style: GoogleFonts.roboto(
              color: widget.txtColor,
              fontSize: 15
            ),
          ),
        ),
      ),
    );
  }
}
