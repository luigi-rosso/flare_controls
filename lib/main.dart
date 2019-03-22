import 'package:flare_flutter/flare_actor.dart';
import 'package:flare_flutter/flare_controls.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flare Controls',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flare Controls'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Store a reference to some controls for the Flare widget
  final FlareControls controls = FlareControls();

  void _playSuccessAnimation() {
    // Use the controls to trigger an animation.
    controls.play("success");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: FlareActor("assets/Teddy.flr",
          animation: "idle",
          fit: BoxFit.contain,
          alignment: Alignment.center,
          // Make sure you use the controls with the Flare Actor widget.
          controller: controls),
      floatingActionButton: FloatingActionButton(
        onPressed: _playSuccessAnimation,
        tooltip: 'Play',
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
