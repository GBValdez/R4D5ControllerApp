import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
    required this.color,
    required this.text,
    this.onTap,
    this.onUpTap,
  });

  final Color color;
  final String text;
  final VoidCallback? onTap;
  final VoidCallback? onUpTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(24.0),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTapDown: (_) {
          onTap?.call();
        },
        onTapUp: (_) {
          onUpTap?.call();
        },
        // onLongPress: onTap,
        child: SizedBox(
          height: 80.0,
          child: Center(
            child: Text(
              text,
              style: const TextStyle(fontSize: 18.0, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
