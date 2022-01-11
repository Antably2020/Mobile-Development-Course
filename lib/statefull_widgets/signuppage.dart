import 'package:flutter/material.dart';

import 'package:exchange_app/statefull_widgets/bg_shape.dart';

class signuppage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<signuppage> {
  TextEditingController nameController = TextEditingController();

  String? _password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(0),
            child: ListView(
              children: <Widget>[
                Stack(children: <Widget>[
                  bg_shape(),
                  Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 100, 20, 20),
                        child: Text(
                          "REGISTER",
                          style: TextStyle(
                            fontSize: 35,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        )),
                  ),
                  Center(
                    child: Container(
                        padding: EdgeInsets.fromLTRB(20, 140, 20, 20),
                        child: Text(
                          "Trading App",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        )),
                  )
                ]),
                Center(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: Text(
                        "WELCOME!",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                        ),
                      )),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                      labelText: 'Create UserName',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 20),
                  child: PasswordField(
                    labelText: 'Create Password',
                    onFieldSubmitted: (String value) {
                      setState(() {
                        this._password = value;
                      });
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(50, 0, 50, 10),
                  child: PasswordField(
                    labelText: 'Confirm Password',
                    onFieldSubmitted: (String value) {
                      setState(() {
                        this._password = value;
                      });
                    },
                  ),
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(50, 10, 50, 0),
                    child: ElevatedButton(
                      child: Text('Signup'),
                      onPressed: () {
                        print(nameController.text);

                        Navigator.pushNamed(context, '/login');
                      },
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromRGBO(12, 242, 180, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Already have an account?'),
                    TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromRGBO(12, 242, 180, 1),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                    ),
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    this.labelText,
    this.onFieldSubmitted,
  });

  final String? labelText;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscureText,
      onFieldSubmitted: widget.onFieldSubmitted,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30.0)),
        filled: true,
        labelText: widget.labelText,
        suffixIcon: GestureDetector(
          onTap: () {
            setState(() {
              _obscureText = !_obscureText;
            });
          },
          child: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
        ),
      ),
    );
  }
}
