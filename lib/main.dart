import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({super.key});
  String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(_title),
        ),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

enum SingingCharacter { lafayette, jefferson }

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});
  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  SingingCharacter? _character1 = SingingCharacter.lafayette;
  SingingCharacter? _character2 = SingingCharacter.lafayette;
  SingingCharacter? _character3 = SingingCharacter.lafayette;
  SingingCharacter? _character4 = SingingCharacter.lafayette;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('Samarqand'),
          leading: Radio(
            value: SingingCharacter.lafayette,
            groupValue: _character4,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character1 = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Toshkent'),
          leading: Radio(
            value: SingingCharacter.lafayette,
            groupValue: _character3,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character2 = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Nukus'),
          leading: Radio(
            value: SingingCharacter.lafayette,
            groupValue: _character2,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character3 = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('Surxondaryo'),
          leading: Radio(
            value: SingingCharacter.jefferson,
            groupValue: _character1,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character4 = value;
              });
            },
          ),
        ),
      ],
    );
  }
}
