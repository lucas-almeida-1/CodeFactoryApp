import 'package:flutter/material.dart';

class ContainerIntro3 extends StatelessWidget {
  const ContainerIntro3({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 213, 212, 212),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          width: 6,
          height: 6,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 213, 212, 212),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Container(
          width: 16,
          height: 6,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 101, 170, 234),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
      ],
    );
  }
}
