import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  String formatDate([String? locale]) =>
      DateFormat('yyyy/MM/dd', locale).format(this);

  String formatTime([String? locale]) =>
      DateFormat('hh:mm a', locale).format(this);

  String formatDOW([String? locale]) => DateFormat('EEEE', locale).format(this);

  String format([String? locale]) =>
      DateFormat('yyyy/MM/dd hh:mm', locale).format(this);
}
