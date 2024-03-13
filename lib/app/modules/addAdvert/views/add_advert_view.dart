import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/add_advert_controller.dart';

class AddAdvertView extends GetView<AddAdvertController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AddAdvertView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AddAdvertView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
