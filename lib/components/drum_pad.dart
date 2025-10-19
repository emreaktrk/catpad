import 'dart:math';

import 'package:flutter/material.dart';

class DrumPad extends StatelessWidget {
  final Color color;
  final VoidCallback? onTap;

  const DrumPad({super.key, required this.color, this.onTap});

  static final List<Color> _pinkish = [
    const Color(0xFFBF3641),
    const Color(0xFFF23DC2),
    const Color(0xFFF299E3),
    const Color(0xFFF2D43D),
  ];

  static final List<Color> _cheerful = [
    const Color(0xFFC04BF2),
    const Color(0xFF91A0F2),
    const Color(0xFF77F2CF),
    const Color(0xFF07F285),
    const Color(0xFFF28705),
  ];

  static final List<Color> _pastel = [
    const Color(0xFF66D9B8),
    const Color(0xFFF29E6D),
    const Color(0xFFFFF889),
  ];

  DrumPad.random({super.key, this.onTap})
    : color = Color.fromRGBO(
        Random().nextInt(256),
        Random().nextInt(256),
        Random().nextInt(256),
        1,
      );

  DrumPad.pinkish({super.key, this.onTap})
    : color = _pinkish[Random().nextInt(4)];

  DrumPad.cheerful({super.key, this.onTap})
    : color = _cheerful[Random().nextInt(5)];

  DrumPad.pastel({super.key, this.onTap})
    : color = _pastel[Random().nextInt(3)];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTapDown: (details) => onTap?.call(),
      borderRadius: BorderRadius.circular(12),
      splashColor: color,
      highlightColor: color.withValues(alpha: 0.65),
      child: Container(
        decoration:BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12),
          color: color.withValues(alpha: 0.35),
        ),
      ),
    );
  }
}
