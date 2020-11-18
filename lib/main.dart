import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ttt/core/tic_tac_toe.dart';

import 'package:flutter_ttt/pages/home_page.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TicTacToe()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

