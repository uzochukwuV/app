import 'package:get/get.dart';

class TransactionController extends GetxController {
  var index = 0.obs;

  onChange(int value) => index = value.obs;
}
