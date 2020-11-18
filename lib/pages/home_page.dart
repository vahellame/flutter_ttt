import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:flutter_ttt/core/tic_tac_toe.dart';

import 'package:flutter_ttt/widgets/restart_button.dart';
import 'package:flutter_ttt/widgets/tic_tac_toe_board.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tic-tac-toe'),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          TicTacToeBoard(),
          Expanded(
            child: RestartButton(),
          ),
          Expanded(
            child: Container(
              child: Text(
                '${context.watch<TicTacToe>().message}',
                style: Theme.of(context).textTheme.headline6,
              ),
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(),
              ),
            ),
          ),
        ]));
  }
}
