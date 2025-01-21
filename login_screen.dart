
import 'package:flutter/material.dart';
import 'package:myproject_flutter/screens/home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(20),
        constraints: const BoxConstraints(
          maxHeight: 500,
          maxWidth: 500,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Login"),
              _buildEmailTextField(),
              _buildPasswordTextField(),
              _buildLoginButton(context),
            ],
          ),
        ),
      ),
    );
  }

  final _emailCtrl = TextEditingController();
  bool _hidePassword = true;

  Widget _buildEmailTextField() {
    return TextField(
      controller: _emailCtrl,
      style: const TextStyle(color: Colors.black),
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        hintStyle: TextStyle(color: Colors.grey),
        hintText: "Enter Email",
        icon: Icon(Icons.email),
      ),
    );
  }

  final _passCtrl = TextEditingController();

  Widget _buildPasswordTextField() {
    return TextField(
      controller: _passCtrl,
      style: const TextStyle(color: Colors.black),
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.grey),
        hintText: "Enter Password",
        icon: const Icon(Icons.key),
        suffixIcon: IconButton(onPressed: (){
          setState(() {
            _hidePassword = !_hidePassword;
          });
        }, icon: Icon(_hidePassword ? Icons.visibility : Icons.visibility_off,
        )
        )
      ),
      obscureText: _hidePassword,
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 300,
      height: 50,
      child: ElevatedButton(
        onPressed: () {
          debugPrint(_emailCtrl.text);
          debugPrint(_passCtrl.text);
          if (_emailCtrl.text == "User@gmail.com" && _passCtrl.text == "123456789") {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Login Failed"),
              ),
            );
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
        ),
        child: const Text("Login"),
      ),
    );
  }
}
