import 'package:edit_x/common_widgets/common_app_bar.dart';
import 'package:edit_x/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: const Text('Second Page'),
        backgroundColor: AppColors.battery,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You are on the Second Page',
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.back();
                },
                child: const Text('Go Back'),
              ),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed('/third');
                },
                child: const Text('Go to Third Page'),
              ),
              SizedBox(
                height: 10000,
              )
            ],
          ),
        ),
      ),
    );
  }
}
