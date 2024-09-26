import 'package:flutter/material.dart';

class EdspertButton {
  Widget primary({required String text, required Function() onTap}) {
    return GestureDetector(
      //Berguna untuk memberikan aksi pada widget
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 47,
        margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: const LinearGradient(
            colors: [
              Color(0xff867AD2),
              Color(0xff6C61AF),
            ],
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: (FontWeight.w600)),
          ),
        ),
      ),
    );
  }
}
