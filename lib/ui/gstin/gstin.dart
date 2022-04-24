import 'package:flutter/material.dart';

import '../ui.dart';

class GstInPage extends StatelessWidget {
  const GstInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'assets/app_title.jpeg',
          height: 60,
        ),
        const SizedBox(height: 36),
        const Text(
          'GSTIN',
          style: TextStyle(
            fontSize: 18,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 18),
        ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(18),
            children: [
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: 'Enter your GST number',
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              ),
              const SizedBox(height: 36),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const OtpPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  minimumSize: const Size(200, 45),
                ),
                child: const Text('Register GSTIN'),
              ),
            ]),
      ]),
    );
  }
}
