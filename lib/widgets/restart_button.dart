import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ttt/core/tic_tac_toe.dart';

class RestartButton extends StatelessWidget {
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TicTacToe>().start();
      },
      child: Container(
        child: Center(
          child: Text("Restart", style: Theme.of(context).textTheme.headline4),
        ),
        decoration: BoxDecoration(
          color: Colors.yellow,
          border: Border.all(),
        ),
      ),
    );
  }
}
