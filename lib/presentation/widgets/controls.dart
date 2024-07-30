import 'package:flutter/material.dart';

class LeftButton extends StatelessWidget {
  static bool isHolding = false;
  final Function function;

  const LeftButton({required Key key, required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        isHolding = true;
        function();
      },
      onTapUp: (_) {
        isHolding = false;
      },
      onPanUpdate: (_) {
        isHolding = false;
      },
      child: Image.asset(
        'assets/control_left.png',
        height: 70,
        width: 70,
      ),
    );
  }
}

class RightButton extends StatelessWidget {
  static bool isHolding = false;
  final Function function;

  const RightButton({required Key key, required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        isHolding = true;
        function();
      },
      onPanUpdate: (_) {
        isHolding = false;
      },
      onTapUp: (_) {
        isHolding = false;
      },
      child: Image.asset(
        'assets/control_right.png',
        height: 70,
        width: 70,
      ),
    );
  }
}

class JumpButton extends StatelessWidget {
  final Function function;

  const JumpButton({required Key key, required this.function}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Image.asset(
        'assets/control_up.png',
        height: 70,
      ),
      onTap: function,
    );
  }
}
