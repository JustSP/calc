import 'package:calc/utils/calc_utils.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String result = '';
  List<ElevatedButton> calcKeys = [];

  @override
  void initState() {
    calcKeys = CalcUtils().generateNumericKeys((key) => onNumericKeyPress(key));
    super.initState();
  }

  void onNumericKeyPress(String keyChar) {
    setState(() {
      result = keyChar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(height: 100, child: Text(result)),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: calcKeys.sublist(16, 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: calcKeys.sublist(12, 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: calcKeys.sublist(8, 12),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: calcKeys.sublist(4, 8),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: calcKeys.sublist(0, 4),
            ),
          ),
        ],
      )),
    );
  }
}
