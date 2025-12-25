import 'package:flutter/material.dart';

class PaddedContainer extends StatelessWidget {
  final Widget child;
  const PaddedContainer({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 450,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
