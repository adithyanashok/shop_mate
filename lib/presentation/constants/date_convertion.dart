import 'package:intl/intl.dart';

String convertDate({required String dateString}) {
  // Parse the date string into a DateTime object
  DateTime dateTime = DateTime.parse(dateString);

  // Create a DateFormat instance to format the date
  DateFormat formatter = DateFormat('MMM d, y, hh:mm a');

  // Format the date and time
  String formattedDate = formatter.format(dateTime);

  // Print the formatted date
  return formattedDate;
}
