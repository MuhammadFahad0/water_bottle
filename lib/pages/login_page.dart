import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:water_bottle/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: PhoneInputScreen(
        actions: [
          SMSCodeRequestedAction((context, action, flowKey, phone) {
            Get.to(HomePage(), arguments: {
              'action': action,
              'flowKey': flowKey,
              'phone': phone,
            });
          }),
        ],
        //  headerBuilder: headerIcon(Icons.phone),
        //  sideBuilder: sideIcon(Icons.phone),
      ),
    );
  }
}
