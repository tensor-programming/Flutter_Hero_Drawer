import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings Page"),
      ),
      body: Container(
        child: Center(
          child: SizedBox(
            width: 400.0,
            child: Hero(
              tag: 'kangaroo',
              child: ClipRRect(
                borderRadius: BorderRadius.circular(60.0),
                child: Image.asset("images/kangaroo.jpg", fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
