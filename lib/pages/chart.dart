import 'package:flutter/material.dart';

class ChartPage extends StatefulWidget {
  const ChartPage({super.key});

  @override
  State<ChartPage> createState() => _ChartPageState();
}

class _ChartPageState extends State<ChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        const SizedBox(
          height: 60,
        ),
        Row(
          children: [Text('Internet data')],
        ),
      ]),
    );
  }
}
