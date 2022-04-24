import 'dart:async';

import 'package:flutter/material.dart';

import '../ui.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  var controller = PageController();
  double page = 0;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.hasClients) {
        try {
          page = controller.page ?? 0;
          setState(() => false);
        } catch (_) {}
      }
    });
    Timer.periodic(const Duration(seconds: 3), (timer) {
      if (controller.hasClients) {
        controller.nextPage(
          duration: const Duration(milliseconds: 400),
          curve: Curves.easeInOut,
        );
        debugPrint('page $page');
      }
      if (page > 2) {
        timer.cancel();
        debugPrint('timer cancel');
      }
    });
  }

  Widget get pageView => Column(children: [
        Image.asset(
          'assets/app_title.jpeg',
          height: 120,
        ),
        const SizedBox(height: 12),
        const Text(
          'Top Brands',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          'Best variety at unbeatable price',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        SizedBox(
          height: 200,
          child: PageView(controller: controller, children: [
            pageView,
            pageView,
            pageView,
            pageView,
          ]),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          for (int i = 0; i < 4; i++)
            Container(
              height: 9,
              width: 9,
              margin: const EdgeInsets.all(3),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.6,
                ),
                shape: BoxShape.circle,
                color: page == i ? Colors.blue : null,
              ),
            ),
        ]),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const LoginPage()),
            );
          },
          child: const Text(
            'Skip',
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
            ),
          ),
        )
      ]),
    );
  }
}
