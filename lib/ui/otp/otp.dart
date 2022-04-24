import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../ui.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const Text(
          'OTP has been sent to',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        const Text(
          '+919999999999',
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 18),
        ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(18),
            children: [
              PinCodeTextField(
                appContext: context,
                length: 6,
                pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 40,
                  fieldWidth: 40,
                  activeColor: Colors.grey,
                  inactiveColor: Colors.grey,
                  activeFillColor: Colors.white,
                ),
                onCompleted: (v) {
                  debugPrint("Completed");
                },
                onChanged: (value) {
                  debugPrint("onChanged $value");
                },
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const DocumentPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    padding: EdgeInsets.zero,
                  ),
                  child: const Text(
                    'Resend OTP',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 15,
                    ),
                  ),
                ),
              ),
              CheckboxListTile(
                value: true,
                onChanged: (value) {},
                title: const Text.rich(
                  TextSpan(children: [
                    TextSpan(text: 'By clicking "Continue" accept neodeal '),
                    TextSpan(
                      text: 'terms and conditions ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(text: 'and '),
                    TextSpan(
                      text: 'Privacy Policy',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ]),
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10,
                  ),
                ),
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 36),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DocumentPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  minimumSize: const Size(200, 45),
                ),
                child: const Text('Register as new user'),
              ),
            ]),
      ]),
    );
  }
}
