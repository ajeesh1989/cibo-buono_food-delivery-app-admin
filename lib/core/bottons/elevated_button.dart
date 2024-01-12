import 'package:cibo_buono_admin/core/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Elevated_buttonSave extends StatelessWidget {
  const Elevated_buttonSave({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        minimumSize: Size(
          double.infinity,
          MediaQuery.of(context).size.height * 0.065,
        ),
        backgroundColor: Colors.lightGreen.shade400,
      ),
      child: Text(
        'Save',
        style: GoogleFonts.openSans(
          fontSize: MediaQuery.of(context).size.width * 0.05,
          fontWeight: FontWeight.w400,
          color: whiteColor,
        ),
      ),
    );
  }
}
