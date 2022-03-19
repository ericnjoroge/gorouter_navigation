import 'package:flutter/material.dart';

import '../constants.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Colors.black, width: 1.0, style: BorderStyle.solid),
            borderRadius: BorderRadius.circular(10.0),
          ),
          color: Colors.white,
          child: getProfileCard(context, index),
        );
      },
    );
  }

  Widget getProfileCard(BuildContext context, int index) {
    switch (index) {
      case 0:
        return Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text(
                'Personal Info',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // TODO: Add Personal Page Route
              },
            ),
          ),
        );
      case 1:
        return Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text(
                'Payment',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // TODO: Add Payment Route
              },
            ),
          ),
        );
      case 2:
        return Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              title: const Text(
                'Sign In Info',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              onTap: () {
                // TODO: Add Signin Info Route
              },
            ),
          ),
        );
    }
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListTile(
          title: const Text(
            'More Info',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          onTap: () {
            // TODO: Add More Info Route
          },
        ),
      ),
    );
  }
}
