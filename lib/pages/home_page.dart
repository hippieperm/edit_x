import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You are on the Home Page',
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/second');
              },
              child: const Text('Go to Second Page'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.toNamed('/third');
              },
              child: const Text('Go to Third Page'),
            ),
          ],
        ),
      ),
    );
  }
}
