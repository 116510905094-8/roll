// Suggested code may be subject to a license. Learn more: ~LicenseLog:1375148515.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2517645381.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:914044095.
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.data, {super.key});

  final String data;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
