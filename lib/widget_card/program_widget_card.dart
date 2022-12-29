import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramWidgetCard extends StatefulWidget {
  final Color color;
  final String style;
  final String heading;
  final int noOfLessons;
  final String image;
  const ProgramWidgetCard({
    super.key,
    required this.color,
    required this.style,
    required this.heading,
    required this.noOfLessons,
    required this.image,
  });

  @override
  State<ProgramWidgetCard> createState() => _ProgramWidgetCardState();
}

class _ProgramWidgetCardState extends State<ProgramWidgetCard> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return Container(
      margin: const EdgeInsets.only(right: 16, bottom: 12),
      width: 242,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xffEBEDF0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 8),
            height: 140,
            width: 242,
            color: widget.color,
            child: Image.asset(widget.image),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: Text(
              widget.style,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: const Color(0XFF598BED)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              widget.heading,
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
            child: Text(
              "${widget.noOfLessons} Lessons",
              style: GoogleFonts.inter(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xff6D747A)),
            ),
          ),
        ],
      ),
    );
  }
}
