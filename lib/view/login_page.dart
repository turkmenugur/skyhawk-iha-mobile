//import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  late String _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Skyhawk'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                Align(
                alignment: Alignment.topCenter,
                  child: Lottie.asset(
                    'assets/animations/login_page_animation.json',
                    width: 200,
                    height: 200
                  ),
                ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: 200,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ],
                      decoration: const InputDecoration(
                        labelText: 'Kodunuzu yazın',
                        contentPadding: EdgeInsets.only(left: 16, right: 16),
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Lütfen bir kod girin.';
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          _code = value;
                        });
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        if (_code == '1234') {
                          Navigator.pushReplacementNamed(context, '/home');
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Kod yanlış. Lütfen tekrar deneyin.'))
                          );
                        }
                      }
                    },

                    child: SizedBox(
                        width: 200, // Set the width to 200dp
                        height: 50, // Set the height to 50dp
                        child: Align(
                          alignment: Alignment.center,
                          child: Text("Giriş Yap"),
                        )
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10), // Reduce the corner radius
                      ),
                    ),
                  ),

                  SizedBox(height: 20),
                  /*Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.blueAccent,
                        ),
                        child: Text('Kayıt Ol'),
                      ),
                      SizedBox(width: 16), // Add a space of 16dp
                      TextButton(
                        onPressed: () {
                          // Navigate to the forgot password page
                        },
                        style: TextButton.styleFrom(
                          foregroundColor: Colors.redAccent,
                        ),
                        child: Text('Şifremi Unuttum'),
                      ),
                    ],
                  )*/
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
