import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Switch and Checkbox Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _switchValue = false;
  bool _checkboxValue = false;

  void _onSwitchChanged(bool value) {
    setState(() {
      _switchValue = value;
    });
  }

  void _onCheckboxChanged(bool? value) {
    setState(() {
      _checkboxValue = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Switch and Checkbox Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                  value: _switchValue,
                  onChanged: _onSwitchChanged,
                ),
                const SizedBox(width: 10),
                Text(_switchValue ? '打开' : '关闭'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(
                  value: _checkboxValue,
                  onChanged: _onCheckboxChanged,
                ),
                const SizedBox(width: 10),
                Text(_checkboxValue ? '打开' : '关闭'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
