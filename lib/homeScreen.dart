import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.80,
        child: ElevatedButton(
          onPressed: () async {
            await _firestore.collection('users').doc().set({
              'Name': 'Macaulay',
              'Number': '0ddeded',
              'FullName': 'Macaulay Famous',
            });

            print('Added');
          },
          child: Text(
            'Send',
          ),
        ),
      )),
    );
  }
}
