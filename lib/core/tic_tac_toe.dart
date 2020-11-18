import 'package:flutter/material.dart';

class TicTacToe with ChangeNotifier {
  var _board;
  var _turn;
  var _win;
  var _message;

  TicTacToe() {
    start();
  }

  List<List<String>> get board => _board;
  String get win => _win;
  String get message => _message;

  void start() {
    _board = [
      [' ', ' ', ' '],
      [' ', ' ', ' '],
      [' ', ' ', ' '],
    ];

    _turn = 'X';
    _win = null;
    _message = 'X turn!';

    notifyListeners();
  }

  void checkWin() {
    for (var i = 0; i <= 2; i++) {
      if (_board[i][0] + _board[i][1] + _board[i][2] == 'XXX') {
        _win = 'X';
        return;
      } else if (_board[i][0] + _board[i][1] + _board[i][2] == '000') {
        _win = '0';
        return;
      } else if (_board[0][i] + _board[1][i] + _board[2][i] == 'XXX') {
        _win = 'X';
        return;
      } else if (_board[0][i] + _board[1][i] + _board[2][i] == '000') {
        _win = '0';
        return;
      }
    }

    if (_board[0][0] + _board[1][1] + _board[2][2] == 'XXX') {
      _win = 'X';
      return;
    } else if (_board[0][0] + _board[1][1] + _board[2][2] == '000') {
      _win = '0';
      return;
    } else if (_board[0][2] + _board[1][1] + _board[2][0] == 'XXX') {
      _win = 'X';
      return;
    } else if (_board[0][2] + _board[1][1] + _board[2][0] == '000') {
      _win = '0';
      return;
    }
    var cellCount = 0;
    for (var i = 0; i <= 2; i++) {
      for (var j = 0; j <= 2; j++) {
        if (_board[i][j] != ' ') {
          cellCount++;
        }
      }
    }
    if (cellCount == 9) {
      _win = 'D';
      return;
    }
  }

  void move(int y, int x) {
    if (cellIsEmpty(y, x) && _win == null) {
      _board[y][x] = _turn;

      if (_turn == 'X') {
        _turn = '0';
      } else if (_turn == '0') {
        _turn = 'X';
      }

      checkWin();

      if (_win == null) {
        _message = '$_turn turn!';
      } else if (_win == 'D') {
        _message = 'Draw! Press \'Restart\' button';
      } else {
        _message = '$_win wins! Press \'Restart\' button';
      }

      print(y.toString() + ' ' + x.toString() + ' ' + _win.toString());

      notifyListeners();
    }
  }

  bool cellIsEmpty(int y, int x) {
    if (_board[y][x] == ' ') {
      return true;
    } else {
      return false;
    }
  }
}
