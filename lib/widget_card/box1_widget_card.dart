import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Box1Widget extends StatefulWidget {
  final String name;
  final IconData icon;
  const Box1Widget({super.key, required this.name, required this.icon});

  @override
  State<Box1Widget> createState() => _Box1WidgetState();
}

class _Box1WidgetState extends State<Box1Widget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: 160,
      height: 48,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: const Color(0xff598BED),
          )),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(
            widget.icon,
            color: const Color(0xff598BED),
          ),
          Text(
            widget.name,
            style: GoogleFonts.inter(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: const Color(0xff6D747A)),
          ),
        ],
      ),
    );
  }
}
