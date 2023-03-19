import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/i/2327ffa4-20e9-41b6-b77c-462d26f7bfea/d3ecbzg-045f95bb-8610-4dbb-84ab-e1d08fb037d7.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            _imagen(),
            _nombreInput(),
            SizedBox(
              height: 5, //espaciado
            ),
            _passwordInput()
          ],
        ),
      ),
    );
  }

  Container _imagen() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 60, vertical: 60),
      child: Image.asset("assets/login.png"),
    );
  }

  Container _nombreInput() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        style: TextStyle(fontSize: 25, color: Colors.white),
        decoration: InputDecoration(
            icon: Icon(Icons.abc, color: Colors.white),
            hintStyle: TextStyle(color: Colors.white),
            labelStyle: TextStyle(color: Color.fromARGB(179, 131, 206, 247)),
            hintText: 'Username',
            labelText: 'Username',
            border: InputBorder.none),
      ),
    );
  }

  Container _passwordInput() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      padding: EdgeInsets.symmetric(horizontal: 25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      child: TextFormField(
        style: TextStyle(fontSize: 25, color: Colors.white),
        decoration: InputDecoration(
            icon: Icon(Icons.password, color: Colors.white),
            hintText: 'Password',
            labelText: 'Password',
            labelStyle: TextStyle(color: Color.fromARGB(179, 131, 206, 247)),
            hintStyle: TextStyle(color: Colors.white),
            border: InputBorder.none),
      ),
    );
  }
}
