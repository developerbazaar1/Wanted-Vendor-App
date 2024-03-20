import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/payment_history_controller.dart';

class PaymentHistoryView extends GetView<PaymentHistoryController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PaymentHistoryView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'PaymentHistoryView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
