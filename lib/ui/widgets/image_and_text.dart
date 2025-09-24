import 'package:flutter/material.dart';

class ImageAndText extends StatelessWidget {
  const ImageAndText({
    super.key, required this.title, required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       Padding(
         padding: const EdgeInsets.all(8.0),
         child: Image.asset(
          image,
          width: 55,
          height: 55,
          ),
       ),
        SizedBox(width: 18),
        Flexible(
          child: Text(
            title,
          ),
        ),
      ],
    );
  }
}