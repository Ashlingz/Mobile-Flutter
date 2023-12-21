import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Detail2 extends StatefulWidget {
  const Detail2({super.key});

  @override
  State<Detail2> createState() => _DetailState();
}

class _DetailState extends State<Detail2> {
  var value1 = TextEditingController();
  var value2 = TextEditingController();
  String result = '0.00';
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          children: [
            TextField(
              controller: value1,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Value 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30.0),
            TextField(
              controller: value2,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Value 2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30.0),
            Text(
              'Result: $result',
              style: const TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(150, 40),
                  ),
                  onPressed: _btnSumClick,
                  child: const Text(
                    'Sum',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0)),
                    minimumSize: Size(150, 40),
                  ),
                  onPressed: _btnClear,
                  child: const Text(
                    'Clear',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _btnClear() {
    setState(() {
      value1.clear();
      value2.clear();
      result = '\$0.00';
    });
  }

  void _btnSumClick() {
    setState(() {
      var f = NumberFormat('\$#,##0.00');
      double v1 = double.parse(value1.text);
      double v2 = double.parse(value2.text);
      double sum = v1 + v2;
      result = f.format(sum);
    });
  }
}
