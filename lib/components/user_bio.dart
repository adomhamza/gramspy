import 'package:flutter/material.dart';

import '../gram_spy_theme.dart';

class UserBio extends StatelessWidget {
  const UserBio({
    Key? key,
    this.fullname = 'Full name not set',
    this.bio = 'Biograph not set',
  }) : super(key: key);
  final String bio;
  final String fullname;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                fullname,
                style: GramSpyTheme.lightTextTheme.headline6,
              ),
            ],
          ),
          Text(bio),
        ],
      ),
    );
  }
}
