import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback fun;
  const CustomButton({
    super.key,
    required this.text,
    required this.fun,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ElevatedButton(
          style: ButtonStyle(
              shape: const WidgetStatePropertyAll(ContinuousRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(12)))),
              backgroundColor: WidgetStatePropertyAll(
                  const Color.fromARGB(255, 255, 192, 141).withOpacity(.7))),
          onPressed: fun,
          child: Text(
            text,
            style: GoogleFonts.aBeeZee(
                textStyle: const TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.w600,
                    fontSize: 14)),
          )),
    );
  }
}
