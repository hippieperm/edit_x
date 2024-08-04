import 'dart:ui';
import 'package:edit_x/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const SizedBox(height: 56), // Height of custom app bar
                  const Text(
                    'You are on the Second Page',
                  ),
                  const SizedBox(height: 20),
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
                  const SizedBox(
                    height: 10000,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(0), // Bottom corners radius
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: 130.0,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: [
                        AppColors.transparent,
                        AppColors.black.withOpacity(0.4),
                      ],
                      stops: const [0.0, 1.0],
                    ),
                    borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(20.0), // Bottom corners radius
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.transparent.withOpacity(0.1),
                        blurRadius: 8.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.arrow_back),
                        color: Colors.white,
                        onPressed: () {
                          Get.back();
                        },
                      ),
                      const Text(
                        'Second Page',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      IconButton(
                        icon: const Icon(Icons.more_vert),
                        color: Colors.white,
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
