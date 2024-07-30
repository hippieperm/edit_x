import 'package:edit_x/common_widgets/common_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../styles/app_colors.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(
        title: const Text('Third Page'),
        backgroundColor: AppColors.battery,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You are on the Third Page',
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
                  Get.toNamed('/');
                },
                child: const Text('Go to Home Page'),
              ),
              SizedBox(height: 1000), // 추가된 콘텐츠로 인해 스크롤 가능하도록
            ],
          ),
        ),
      ),
    );
  }
}
