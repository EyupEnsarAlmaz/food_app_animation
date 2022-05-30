import 'package:flutter/material.dart';
import 'package:food_app_animation/const_class.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Food Animation App';
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

bool _value = false;
bool _visible = false;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: [
        Expanded(
          child: Column(
            children: [
              animatedOpacity(
                  image: Image.asset(ImagePath().ustEkmek), opacity: 1.0),
              animatedOpacity(
                  image: Image.asset(ImagePath().ustkivircikPath),
                  opacity: _visible ? 1.0 : 0.0),
              animatedOpacity(
                  image: Image.asset(ImagePath().domatesPath),
                  opacity: _visible ? 1.0 : 0.0),
              animatedOpacity(
                  image: Image.asset(ImagePath().peynirPath),
                  opacity: _visible ? 1.0 : 0.0),
              animatedOpacity(
                  image: Image.asset(ImagePath().etPath), opacity: 1.0),
              animatedOpacity(
                  image: Image.asset(ImagePath().soganPath),
                  opacity: _visible ? 1.0 : 0.0),
              animatedOpacity(
                  image: Image.asset(ImagePath().tursuPath),
                  opacity: _visible ? 1.0 : 0.0),
              animatedOpacity(
                  image: Image.asset(ImagePath().altkivircikPath),
                  opacity: _visible ? 1.0 : 0.0),
              animatedOpacity(
                  image: Image.asset(ImagePath().ekmekaltiPath), opacity: 1.0),
            ],
          ),
        ),
        Expanded(
          child: CheckboxListTile(
            activeColor: Colors.green,
            checkColor: Colors.white,
            title: Text("Marul İster Misiniz?"),
            value: _value,
            onChanged: (bool? value) {
              setState(() {
                _value = value!;
                _visible = !_visible;
              });
            },
          ),
        )
      ]),
    );
  }

  AnimatedOpacity animatedOpacity(
      {required Widget image, required double opacity}) {
    return AnimatedOpacity(
        opacity: opacity,
        duration: const Duration(milliseconds: 500),
        child: image);
  }
}
