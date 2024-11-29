import 'package:flutter/material.dart';

class ColorPickerPage extends StatefulWidget {
  const ColorPickerPage({super.key});

  @override
  State<ColorPickerPage> createState() => _ColorPickerPageState();
}

class _ColorPickerPageState extends State<ColorPickerPage> {
  int red = 128;
  int green = 128;
  int blue = 128;

  void _updateRed(double value) {
    setState(() {
      red = value.toInt();
    });
  }

  void _updateGreen(double value) {
    setState(() {
      green = value.toInt();
    });
  }

  void _updateBlue(double value) {
    setState(() {
      blue = value.toInt();
    });
  }

  @override
  Widget build(BuildContext context) {
    Color selectedColor = Color.fromARGB(255, red, green, blue);

    return Scaffold(
      appBar: AppBar(
        title: const Text('RGB Color Picker'),
        backgroundColor: const Color.fromARGB(255, 196, 145, 218), // Статичний фіолетовий фон
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Показ кольору
          Container(
            width: 150,
            height: 150,
            color: selectedColor,
          ),
          const SizedBox(height: 20),

          // Слайдер для червоного
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Red: "),
              Text('$red', style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Slider(
            value: red.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.red,
            onChanged: _updateRed,
          ),

          // Слайдер для зеленого
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Green: "),
              Text('$green', style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Slider(
            value: green.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.green,
            onChanged: _updateGreen,
          ),

          // Слайдер для синього
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Blue: "),
              Text('$blue', style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
          Slider(
            value: blue.toDouble(),
            min: 0,
            max: 255,
            activeColor: Colors.blue,
            onChanged: _updateBlue,
          ),
        ],
      ),
    );
  }
}
