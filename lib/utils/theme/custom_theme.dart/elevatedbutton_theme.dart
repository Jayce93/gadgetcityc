import 'package:flutter/material.dart';

class GElevatedButtonTheme {
  GElevatedButtonTheme._();
  static final lightElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 4, // Adjust the elevation as needed
      foregroundColor: Colors.white,
      backgroundColor: const Color.fromARGB(255, 13, 10, 168),
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: const BorderSide(
        color: Colors.blue,
      ),
      padding: const EdgeInsets.fromLTRB(131, 13, 131, 13), // Set padding
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      visualDensity: VisualDensity(horizontal: 0, vertical: 10),
    ),
  );

  // Dark theme
  static final darkElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 4, // Adjust the elevation as needed
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue.shade500,
      disabledBackgroundColor: Colors.grey,
      disabledForegroundColor: Colors.grey,
      side: const BorderSide(
        color: Colors.blue,
      ),
      padding: const EdgeInsets.fromLTRB(131, 13, 131, 13), // Set padding
      textStyle: const TextStyle(
          fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  );
}
