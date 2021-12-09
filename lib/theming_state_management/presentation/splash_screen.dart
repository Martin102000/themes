import 'package:delevery_diego/theming_state_management/data/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'theme.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SplashController>(
          init: SplashController(),
          builder: (splash) {
            return Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    // ignore: prefer_const_literals_to_create_immutables
                    colors: [
                      DeliveryColors.green,
                      DeliveryColors.purple,
                    ]),
              ),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 70,
                      foregroundImage: const AssetImage('assets/logo.png'),
                      backgroundColor: Theme.of(context).canvasColor,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'DeliveryApp',
                      style: Theme.of(context).textTheme.headline4!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: DeliveryColors.white,
                          ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
