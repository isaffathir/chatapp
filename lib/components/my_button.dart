import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String? text;
  const MyButton({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: 100,
        height: 70,
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Material(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Center(
                  child: Text(
                text!,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  // fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                ),
              )),
            )));
  }
}
