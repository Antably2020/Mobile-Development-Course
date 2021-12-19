import 'package:flutter/material.dart';

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
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Sign up',
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                          fontSize: 30),
                    )),
                Container(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Create UserName',
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: Text('Signup'),
                      onPressed: () {
                        print(nameController.text);

                        Navigator.pushNamed(context, '/login');
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Already have an account?'),
                    TextButton(
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
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
        border: const UnderlineInputBorder(),
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
