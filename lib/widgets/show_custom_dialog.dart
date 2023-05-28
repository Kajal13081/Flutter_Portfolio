import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void showCustomDialog(BuildContext ctx, String title, String description) {
  showDialog(
    context: ctx,
    builder: (context) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 300,
        child: AlertDialog(
          backgroundColor: Color(0xFF16171a),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(12.0))),
          title: Text(title, style: TextStyle(color : Color(0xFF9d62d9),
          fontWeight: FontWeight.bold,
          fontSize: 20)),
          content: Text('Username $description', style: TextStyle(color : Color(0xFF9d62d9),
          fontSize: 18,
          fontWeight: FontWeight.w400)),
          actions: [
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('OK', style: TextStyle(color : Color(0xFFf2f2fa),
                fontSize: 18),),
            ),
          ],
        ),
      ),
    ),
  );
}