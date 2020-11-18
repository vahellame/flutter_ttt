import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ttt/core/tic_tac_toe.dart';

class TicTacToeCell extends StatelessWidget {
  final _text;
  final _y;
  final _x;
  TicTacToeCell(this._y, this._x, this._text);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<TicTacToe>().move(_y, _x);
      },
      child: Container(
        child: Center(
          child: Text(_text, style: Theme.of(context).textTheme.headline6),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(),
        ),
      ),
    );
  }
}
