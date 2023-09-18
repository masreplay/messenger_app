import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class ThreeDigitInputFormatter extends TextInputFormatter {
  static int? parseInt(String value) => int.tryParse(value.replaceAll(",", ""));

  static double? parseDouble(String value) =>
      double.tryParse(value.replaceAll(",", ""));

  static String format(double value) {
    final formatter = NumberFormat('#,###');
    return formatter.format(value);
  }

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) return newValue;

    final englishNumberOnly = _toEnglishNumbers(newValue.text);

    final value = parseDouble(englishNumberOnly);

    if (value == null) {
      return oldValue;
    }

    final formatter = NumberFormat('#,###');
    final newText = formatter.format(value);

    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

class NumbersInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.selection.baseOffset == 0) return newValue;

    // allow only numbers 0-9 and ٠-٩
    final englishAndArabicNumbers = RegExp(r'[0-9٠-٩]');
    if (!englishAndArabicNumbers.hasMatch(newValue.text)) {
      return oldValue;
    }

    final newText = _toEnglishNumbers(newValue.text);

    return newValue.copyWith(
      text: newText,
      selection: TextSelection.collapsed(offset: newText.length),
    );
  }
}

String _toEnglishNumbers(String value) {
  const arabicNumbers = '٠١٢٣٤٥٦٧٨٩';
  const englishNumbers = '0123456789';
  for (var i = 0; i < arabicNumbers.length; i++) {
    value = value.replaceAll(arabicNumbers[i], englishNumbers[i]);
  }
  return value;
}
