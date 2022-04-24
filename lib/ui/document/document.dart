import 'package:flutter/material.dart';

import '../ui.dart';

class KycPage extends StatelessWidget {
  const KycPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var value = '';
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white30,
        title: const Text(
          'Upload KYC',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'assets/app_title.jpeg',
          height: 60,
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(9),
          color: Colors.grey[100],
          child: Row(children: [
            Container(
              height: 36,
              width: 36,
              alignment: Alignment.center,
              margin: const EdgeInsets.all(3),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: const Text(
                '2',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 9),
            const Text(
              'Upload proof of identity',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ]),
        ),
        const SizedBox(height: 24),
        ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(18),
            children: [
              RadioListTile(
                value: 'AadhaerCard',
                groupValue: value,
                onChanged: (value) {},
                title: const Text('Aadhaer Card'),
              ),
              const Divider(),
              RadioListTile(
                value: 'Passport',
                groupValue: value,
                onChanged: (ind) {},
                title: const Text('Passport'),
              ),
              const Divider(),
              RadioListTile(
                value: 'DrivingLicence',
                groupValue: value,
                onChanged: (ind) {},
                title: const Text('Driving Licence'),
              ),
              const Divider(),
              RadioListTile(
                value: 'VoterId',
                groupValue: value,
                onChanged: (ind) {},
                title: const Text('Voter Id'),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (_) => const IndexPage()),
                    (_) => false,
                  );
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  minimumSize: const Size(200, 45),
                ),
                child: const Text('Continue Upload'),
              ),
            ]),
      ]),
    );
  }
}

class DocumentPage extends StatelessWidget {
  const DocumentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset('assets/document.png'),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const KycPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
            minimumSize: const Size(200, 45),
          ),
          child: const Text(
            'Skip and upload Document Later',
            style: TextStyle(color: Colors.blueGrey),
          ),
        ),
        const Text(
          'You can not view price and place orders',
          style: TextStyle(color: Colors.grey),
        ),
      ]),
    );
  }
}
