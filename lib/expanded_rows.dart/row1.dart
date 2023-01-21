import 'package:flutter/material.dart';

class Row1 extends StatefulWidget {
  const Row1({super.key});

  @override
  State<Row1> createState() => _Row1State();
}

class _Row1State extends State<Row1> {
  int _groupValueM = 0;
  int _groupValueF = 0;
  void _onChangedM() {
    setState(() {
      _groupValueM = 1;
      _groupValueF = 0;
    });
  }

  void _onChangedF() {
    setState(() {
      _groupValueF = 1;
      _groupValueM = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                const Text('male'),
                const SizedBox(height: 8),
                const Icon(
                  Icons.male,
                  size: 40,
                  color: Colors.blue,
                ),
                Radio(
                  value: 1,
                  groupValue: _groupValueM,
                  onChanged: (value) => _onChangedM(),
                )
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Text('female'),
                const SizedBox(height: 8),
                const Icon(
                  Icons.female,
                  size: 40,
                  color: Colors.pink,
                ),
                Radio(
                  value: 1,
                  groupValue: _groupValueF,
                  onChanged: (value) => _onChangedF(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
