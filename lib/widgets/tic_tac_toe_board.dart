import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ttt/core/tic_tac_toe.dart';

import 'package:flutter_ttt/widgets/tic_tac_toe_cell.dart';

class TicTacToeBoard extends StatelessWidget {
  const TicTacToeBoard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1 / 1,
        child: Column(
          children: List.generate(3, (i) {
            return Expanded(
              child: Row(
                children: List.generate(3, (j) {
                  return Expanded(
                      child: TicTacToeCell(
                          i, j, context.watch<TicTacToe>().board[i][j]));
                }),
              ),
            );
          }),
        ));
  }
}
