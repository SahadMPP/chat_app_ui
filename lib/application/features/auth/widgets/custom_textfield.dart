import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CostomTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword;
  
  const CostomTextField({
    super.key, required this.hintText, required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
            suffixIcon: isPassword ?
             Padding(
              padding: const EdgeInsets.only(top: 15),
              child:Text(
                "Hide",
                textAlign: TextAlign.center,
                style: GoogleFonts.aBeeZee(
                  textStyle: const TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 10),
                ),
              ),
            ) : null,
            hintText: hintText,
            contentPadding: const EdgeInsets.all(10),
            hintStyle: GoogleFonts.aBeeZee(
              textStyle:
                  const TextStyle(color: Colors.grey, fontSize: 12),
            ),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey[300]!)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8))),
      ),
    );
  }
}
