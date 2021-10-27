import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(220, 48, 220, 30),
        child: Column(
          children: [
            const CircleAvatar(
              radius: 90,
              backgroundImage: AssetImage('assets/dummy.jpg'),
            ),
            const SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Text('CHI',
                  style: TextStyle(
                      fontSize: 90,
                      color: Colors.cyan[800],
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.normal)),
            ),
            Divider(
              color: Colors.cyan[900],
            ),
            Text(
              "REDEFINING HEALTHCARE",
              style: TextStyle(
                  color: Colors.cyan[900],
                  fontSize: 16,
                  letterSpacing: 2,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'App Version: v3.1.51-19000',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'App UI Library Version: v1.2.22',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'RTC Library Version: v1.1.20',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'RTC Build Date: 30-May-2020 11:30 PM',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Build Date: 27-Sep-2021 11:25 PM',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text('Serve: charms-qa',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  decoration: TextDecoration.none,
                  fontWeight: FontWeight.normal,
                )),
          ],
        ),
      ),
    );
  }
}
