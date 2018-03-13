import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account Page"),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 100.0,
            child: Hero(
              tag: 'kangaroo',
              child: ClipOval(
                child: Image.asset("images/kangaroo.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
