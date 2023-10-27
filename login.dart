import 'package:flutter/material.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Navigation Basics',
//     home: LoginPage(),
//   ));
// }

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorMessage = '';

  void _login() {
    String username = usernameController.text;
    String password = passwordController.text;

    // Perform validation here (e.g., check against a database or hardcoded values)
    if (username == 'prachips' && password == '02') {
      // Successful login
      setState(() {
        errorMessage = 'Hello $username';
        isLoggedIn = true;
      });

      // Navigate to the next screen
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SecondRoute()),
      );
    } else {
      // Invalid login
      setState(() {
        errorMessage = 'Invalid username or password';
      });
    }
  }

  bool isLoggedIn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 10),
            Text(errorMessage, style: TextStyle(color: Colors.red)),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
