import 'package:flutter/material.dart';

import 'gram_spy_theme.dart';

void main() {
  runApp(const GramSpy());
}

class GramSpy extends StatelessWidget {
  const GramSpy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = GramSpyTheme.light();
    return MaterialApp(
      title: 'GramSpy',
      theme: theme,
    );
  }
}
