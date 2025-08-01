import 'package:flutter/material.dart';

class TicketScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tickets")),
      body: Center(
        child: Text(
          "This is the Tickets Screen",
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
