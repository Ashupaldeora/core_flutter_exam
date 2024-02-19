import 'package:core_flutter_exam/utils/cart.dart';

double total() {
  double subtotal = 0;
  for (int i = 0; i < cart.length; i++) {
    subtotal += cart[i]['price'] * cart[i]['quantity'];
  }

  return subtotal;
}

double finalamount = 0;
