import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'home_page.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Container(
            color: Colors.red, // Temporary background color for debugging
          ),
          FlutterLogin(
            title: 'NextLevelNews',
            onLogin: _authUser,
            onSignup: _signupUser,
            onSubmitAnimationCompleted: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => HomePage(),
              ));
            },
            onRecoverPassword: _recoverPassword,
            theme: LoginTheme(
              primaryColor: Colors.blueGrey,
              cardTheme: CardTheme(
                color: Colors.white,
                elevation: 5,
                margin: EdgeInsets.symmetric(horizontal: 20),
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(75.0),
                ),
              ),
              inputTheme: InputDecorationTheme(
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.zero,
              ),
              buttonTheme: LoginButtonTheme(
                backgroundColor: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<String?> _authUser(LoginData data) {
    print('Username: ${data.name}, Password: ${data.password}');
    return Future.delayed(Duration(seconds: 2)).then((_) {
      if (data.name == 'user' && data.password == 'password') {
        return null;
      }
      return 'Username or password is incorrect';
    });
  }

  Future<String?> _signupUser(SignupData data) {
    print('Signup Username: ${data.name}, Password: ${data.password}');
    return Future.delayed(Duration(seconds: 2)).then((_) {
      // Here you can add signup logic
      return null;
    });
  }

  Future<String?> _recoverPassword(String name) {
    print('Recover password for: $name');
    return Future.delayed(Duration(seconds: 2)).then((_) {
      if (name == 'user') {
        return null;
      }
      return 'User not found';
    });
  }
}
