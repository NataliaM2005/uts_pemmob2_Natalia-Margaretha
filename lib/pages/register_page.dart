import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final emailC = TextEditingController();
  final passC = TextEditingController();
  final confirmC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(controller: emailC, decoration: InputDecoration(labelText: "Email")),
            TextField(controller: passC, obscureText: true, decoration: InputDecoration(labelText: "Password")),
            TextField(controller: confirmC, obscureText: true, decoration: InputDecoration(labelText: "Konfirmasi Password")),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}
