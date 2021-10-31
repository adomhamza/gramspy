import 'package:flutter/material.dart';

import '../gram_spy_theme.dart';

class ProfileStatisics extends StatelessWidget {
  const ProfileStatisics({
    Key? key,
    required this.postCount,
    required this.followersCount,
    required this.followingCount,
  }) : super(key: key);
  final String postCount;
  final String followersCount;
  final String followingCount;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: const EdgeInsets.only(right: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Text(
                postCount,
                style: GramSpyTheme.lightTextTheme.bodyText1,
              ),
              const Text(
                'Posts',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                followersCount,
                style: GramSpyTheme.lightTextTheme.bodyText1,
              ),
              const Text(
                'Followers',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Column(
            children: [
              Text(
                followingCount,
                style: GramSpyTheme.lightTextTheme.bodyText1,
              ),
              const Text(
                'Following',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
