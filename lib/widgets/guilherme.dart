import 'package:flutter/material.dart';

class Guilherme extends StatelessWidget {
  const Guilherme({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(-150,-50),
      child: Transform.scale(
        scale: 2,
        child: Image.asset(
          'images/gui.right.png',
        ),
      ),
    );
  }
}

