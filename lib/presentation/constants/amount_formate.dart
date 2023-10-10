import 'package:intl/intl.dart';

String convertAmount({required amount}) {
  return NumberFormat.compactCurrency(
    decimalDigits: 2,
    locale: 'en_IN',
    symbol: '',
  ).format(amount);
}
