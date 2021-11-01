import 'package:flutter/material.dart';
import '../gram_spy_theme.dart';

class PostThumbnail extends StatelessWidget {
  const PostThumbnail({
    Key? key,
    required this.networkImage,
    required this.commentCount,
    required this.likesCount,
  }) : super(key: key);
  final String networkImage;
  final String likesCount;
  final String commentCount;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                networkImage,
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      likesCount,
                      style: GramSpyTheme.lightTextTheme.bodyText1,
                    ),
                    const Text(
                      'Likes',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      commentCount,
                      style: GramSpyTheme.lightTextTheme.bodyText1,
                    ),
                    const Text(
                      'Comments',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
