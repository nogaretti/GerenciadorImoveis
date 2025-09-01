import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gerenciador_imoveis/components/custom_text.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscured = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 81, 44, 146),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/aws-lambda-1.svg',
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  BlendMode.srcIn,
                ),
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              const SizedBox(height: 150),
              const CustomTextField(hintText: 'Email'),
              const SizedBox(height: 10),
              CustomTextField(hintText: 'Senha', obscureText: _isObscured, suffixIcon: IconButton(
                icon: Icon(_isObscured ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.1, vertical: 15),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                ),
                child: const Text('Login'),
              ),
              const SizedBox(height: 20),
              TextButton(
                style: TextButton.styleFrom(foregroundColor: Colors.white70),
                onPressed: () {},
                child: const Text('Esqueceu a senha?'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
