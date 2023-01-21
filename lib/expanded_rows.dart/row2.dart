import 'package:flutter/material.dart';

class Row2 extends StatelessWidget {
  // ignore: non_constant_identifier_names
  static TextEditingController height_controller = TextEditingController();
  // ignore: non_constant_identifier_names
  static TextEditingController weight_controller = TextEditingController();

  const Row2({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  TextField(
                    controller: height_controller,
                    keyboardType: TextInputType.number,
                    maxLength: 4,
                    style: const TextStyle(fontSize: 18),
                    decoration: const InputDecoration(
                        label: Text('Height M'),
                        prefixIcon: Icon(Icons.wb_twilight)),
                  ),
                  //const SizedBox(height: 4),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(children: [
                TextField(
                  controller: weight_controller,
                  keyboardType: TextInputType.number,
                  maxLength: 4,
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                      label: Text('Weight Kg'),
                      prefixIcon: Icon(Icons.wb_twilight)),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
