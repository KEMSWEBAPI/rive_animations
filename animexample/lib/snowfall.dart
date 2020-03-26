import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class SnowFall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.deepPurple,
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: FlareActor(
            'assets/snowfall.flr',
            animation: 'snowflakefall',
            alignment: Alignment.topRight,
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SnowFall()),
                )),
      ),
    );
  }
}