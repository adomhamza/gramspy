import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
    this.networkImage,
    this.imageRadius = 20,
  }) : super(key: key);

  final double imageRadius;
  final ImageProvider? networkImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: imageRadius,
            child: CircleAvatar(
              radius: imageRadius - 5,
              backgroundImage: networkImage,
            ),
          ),
        ],
      ),
    );
  }
}
