import 'package:delivery_app/Widgets/text_field.dart';
// import 'package:delivery_app/Widgets/or_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_icons/line_icons.dart';
import 'package:delivery_app/utils/utils.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool _isLoading = false;
  bool _hidePassword = true;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final fullnameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    fullnameController.dispose();
  }

  /* void chooseImage() async {
    Uint8List image = await pickImage(ImageSource.gallery);
    setState(() {
      _image = image;
    });
  } */

  void _signUp() async {
    setState(() {
      _isLoading = true;
    });
    // String UUID = await AuthenticationMeth().signUp(
    //   emailController.text.replaceAll(' ', ''),
    //   passwordController.text.replaceAll(' ', ''),
    //   usernameController.text.replaceAll(' ', ''),
    //   context,
    // );
    setState(() {
      _isLoading = false;
    });
  }

  // void _generateUsername() {
  //   var generator = UsernameGenerator();
  //   generator.separator = '';
  //   setState(() {
  //     usernameController.clear();
  //     usernameController.text = generator.generateRandom();
  //   });
  // }

  /* void usernameCheck(String username, String UUID) {} */

  void _togglevisibility() {
    setState(() {
      _hidePassword = !_hidePassword;
    });
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
          padding: EdgeInsets.only(
            left: 20,
            top: 40,
          ),
          child: Text(
            'Create an account',
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
        /* const SizedBox(
          height: 20,
        ), */
        /* SizedBox(height: 150, width: 200, child: Bunhublogoanimation()), */

        //upload profile picture secton
        /* Stack(
          alignment: Alignment.center,
          children: [
            _image != null
                ? CircleAvatar(
                    radius: 64,
                    backgroundImage: MemoryImage(_image!),
                    backgroundColor: Colors.red,
                  )
                : const CircleAvatar(
                    radius: 64,
                    backgroundImage: NetworkImage(defaultProfilePic),
                    backgroundColor: Colors.red,
                  ),
            Positioned(
              bottom: -10,
              left: 203,
              child: IconButton(
                onPressed: chooseImage,
                icon: const Icon(Icons.add_a_photo),
              ),
            )
          ],
        ), */
        Padding(
            padding: const EdgeInsets.only(right: 30, left: 30),
            child: TextField(
                controller: fullnameController,
                obscureText: false,
                decoration: InputDecoration(
                    filled: true,
                    hintText: 'Full name',
                    hintStyle: const TextStyle(
                      fontSize: 16,
                    ),
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      borderSide: BorderSide
                          .none, /* borderRadius: BorderRadius.circular(25) */
                    )))),
        Padding(
            padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
            child: TextFieldInput(
                type: TextInputType.emailAddress,
                controller: emailController,
                text: "Email")),
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
        Padding(
            padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
            child: InkWell(
              onTap: () {
                /*  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => UploadProfilePicScreen(
                              email: emailController.text.replaceAll(' ', ''),
                              password:
                                  passwordController.text.replaceAll(' ', ''),
                              username:
                                  usernameController.text.replaceAll(' ', ''),
                            ))); */
                _signUp();
              },
              child: Padding(
                padding: const EdgeInsets.only(top: 20),
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
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                                color: Colors.white),
                          )),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Already have an account?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(
                      color: primaryColor,
                      fontSize: 16,
                    ),
                  ))
            ],
          ),
        )
      ]),
    );
  }
}
