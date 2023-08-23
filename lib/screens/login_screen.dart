import 'package:delivery_app/Widgets/text_field.dart';
import 'package:delivery_app/Widgets/or_divider.dart';
import 'package:delivery_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:delivery_app/utils/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _isLoading = false;
  bool _hidePassword = true;

  void _togglevisibility() {
    setState(() {
      _hidePassword = !_hidePassword;
    });
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: ListView(children: [
        Flexible(child: Container(), flex: 2),
        /* Row(
          children: const [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 40),
              child: Text(
                'Log In',
                style: TextStyle(
                    fontSize: 24,
                    /* color: BlackCoffee, */
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ), */
        const Padding(
          padding: EdgeInsets.only(left: 20, top: 20),
          child: Text(
            'Welcome back!',
            style: TextStyle(
                fontSize: 28,
                color: secondaryColor,
                fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 0,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: SizedBox(
              height: 150,
              width: 200,
              child: SvgPicture.asset(
                'assets/logos/tMocapital_Logo.svg',
                color: primaryColor,
              )),
        ),
        Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: TextFieldInput(
              type: TextInputType.emailAddress,
              controller: emailController,
              text: "Email",
              /* onSubmit: _Login, */
            )),
        Padding(
            padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
            child: TextField(
                controller: passwordController,
                obscureText: _hidePassword,
                decoration: InputDecoration(
                    suffixIcon: GestureDetector(
                        onTap: () {
                          _togglevisibility();
                        },
                        child: _hidePassword
                            ? const Icon(LineIcons.eyeSlash, color: hint)
                            : const Icon(LineIcons.eye, color: hint)),
                    filled: true,
                    hintText: 'Password',
                    hintStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide
                          .none, /* borderRadius: BorderRadius.circular(25) */
                    )))),
        const Padding(
            padding: EdgeInsets.only(
              top: 30,
              bottom: 10,
            ),
            child: Center(
              child: Text('Forgotten Password',
                  style: TextStyle(
                    color: primaryColor,
                    decoration: TextDecoration.underline,
                  )),
            )),
        Padding(
            padding: const EdgeInsets.only(top: 35, left: 30, right: 30),
            child: InkWell(
              onTap: () {
                // on login button press
              },
              child: Container(
                  decoration: const BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(15))),
                  height: 46,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: _isLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: secondaryCAlt,
                          ),
                        )
                      : const Text(
                          'Continue',
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.w500),
                        )),
            )),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
            bottom: 0,
            top: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Don\'t have an account?',
                style: TextStyle(fontSize: 16),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SignupScreen()),
                    );
                  },
                  child: const Text('Create new one',
                      style: TextStyle(color: primaryColor, fontSize: 16)))
            ],
          ),
        ),
        const Spacer(),
      ]),
    );
  }

  Widget googleSignInButton() {
    return InkWell(
      onTap: () {
        //
      },
      child: Container(
        decoration: const BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 14, right: 14, top: 8, bottom: 8),
          child: Row(
            children: [
              Image.asset(
                'assets/icons/google .png',
                height: 45,
              ),
              const Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Text('Continue with Google',
                      style: TextStyle(
                          color: secondaryCAlt, fontWeight: FontWeight.w500)))
            ],
          ),
        ),
      ),
    );
  }
}
