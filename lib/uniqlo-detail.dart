import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uniqlo/Model/uniqlo.dart';

class Uniqlodetail extends StatelessWidget {
  final Uniqlo uniqlo;

  const Uniqlodetail({super.key, required this.uniqlo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Recipe Detail',
          style: GoogleFonts.poppins(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset(uniqlo.imgPath),
            const SizedBox(height: 16.0),
            Text(
              uniqlo.imgName,
              style: GoogleFonts.poppins(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(uniqlo.imgDetail, style: GoogleFonts.poppins(fontSize: 16.0)),
          ],
        ),
      ),
    );
  }
}