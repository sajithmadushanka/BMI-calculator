import 'dart:math';

import 'package:bmi_cal/expanded_rows.dart/row2.dart';
import 'package:flutter/material.dart';

class Row3 extends StatefulWidget {
  const Row3({super.key});

  @override
  State<Row3> createState() => _Row3State();
}

class _Row3State extends State<Row3> {
  String func() {
    return (double.parse(Row2.weight_controller.text) /
            pow(double.parse(Row2.height_controller.text), 2))
        .toStringAsFixed(2);
  }

  bool bl =
      Row2.weight_controller.text != '' && Row2.height_controller.text != '';
  void catagety() {
    bl = Row2.weight_controller.text != '' && Row2.height_controller.text != '';
  }

  // ignore: non_constant_identifier_names
  String _call_catagety() {
    if (double.parse(func()) < 16) {
      return 'Severe Thinness';
    } else if (double.parse(func()) <= 17) {
      return 'Moderate Thinness';
    } else if (double.parse(func()) <= 18.5) {
      return 'Mild Thinness';
    } else if (double.parse(func()) <= 25) {
      return 'Normal';
    } else if (double.parse(func()) <= 30) {
      return 'Overweight';
    } else if (double.parse(func()) <= 35) {
      return 'Obese Class I';
    } else if (double.parse(func()) <= 40) {
      return 'Obese Class II';
    } else {
      return 'Obese Class III';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FloatingActionButton(
                      onPressed: () {
                        setState(() {
                          catagety();
                        });
                      },
                      child: const Text('CAL'),
                    ),
                  ],
                ),
              ),
              const Text(
                'BMI',
                style: TextStyle(fontSize: 20.0),
              ),
              const SizedBox(height: 8),
              Text(
                Row2.weight_controller.text != '' &&
                        Row2.height_controller.text != ''
                    ? func()
                    : '00',
                style:
                    const TextStyle(fontSize: 30.0, color: Colors.deepPurple),
              ),
              Text(
                bl ? _call_catagety() : '',
                style: const TextStyle(fontSize: 25, color: Colors.amber),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
