import 'package:flutter/material.dart';

class CalcUtils {
  List<ElevatedButton> generateNumericKeys(void Function(String) onKeyPressed) {
    List<String> chars = [
      '+/-',
      '0',
      '.',
      '=',
      '1',
      '2',
      '3',
      '+',
      '4',
      '5',
      '6',
      '-',
      '7',
      '8',
      '9',
      'X',
      'C',
      'DEL',
      '%',
      '/'
    ];
    List<ElevatedButton> output = [];

    for (var char in chars) {
      ElevatedButton newButton = ElevatedButton(
          onPressed: () => onKeyPressed(char),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(char, style: const TextStyle(fontSize: 32)),
          ));
      output.add(newButton);
    }

    return output;
  }
}
