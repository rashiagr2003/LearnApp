import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadingWidget extends StatefulWidget {
  final String heading;
  const HeadingWidget({super.key, required this.heading});

  @override
  State<HeadingWidget> createState() => _HeadingWidgetState();
}

class _HeadingWidgetState extends State<HeadingWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Text(
            widget.heading,
            style: GoogleFonts.lora(
                fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
          ),
        ),
        Text(
          "View all ->",
          style: GoogleFonts.inter(
              fontWeight: FontWeight.w500, fontSize: 12, color: Colors.black),
        ),
      ],
    );
  }
}
