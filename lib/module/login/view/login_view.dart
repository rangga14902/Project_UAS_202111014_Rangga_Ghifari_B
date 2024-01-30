
import 'package:flutter/material.dart';
import 'package:login_register_dan_logout/core.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
  controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
        ),
        body: SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(40.0),
            child: Column(
            children:  [
              TextFormField(
              initialValue: 'admin@gmail.com',
              maxLength: 20,
              decoration: const InputDecoration(
              labelText: 'Email',
              labelStyle: TextStyle(
              color: Colors.blueGrey,
              ),
              suffixIcon: Icon(
              Icons.email,
              ),
              enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: Colors.blueGrey,
              ),
              ),
              helperText: 'Enter your email address',
              ),
              onChanged: (value) {},
              ),
              TextFormField(
              initialValue: '123456',
              maxLength: 20,
              obscureText: true,
              decoration: const InputDecoration(
              labelText: 'Password',
              labelStyle: TextStyle(
              color: Colors.blueGrey,
              ),
              suffixIcon: Icon(
              Icons.password,
              ),
              enabledBorder: UnderlineInputBorder(
              borderSide: BorderSide(
              color: Colors.blueGrey,
              ),
              ),
              helperText: 'Enter your password',
              ),
              onChanged: (value) {},
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                ),
                onPressed: () {},
                child: const Text("Login"),
                ),
              ),
            ],
            ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
    