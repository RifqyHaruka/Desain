import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30,
              ),
              Text(
                'Sign In',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Build Your Career',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: Image.asset(
                  'assets/image_sign_in.png',
                  width: 260,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                'Email Address',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 45,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: inputFieldColor,
                ),
                child: Center(
                  child: TextFormField(
                    controller: emailController,
                    cursorColor: primaryColor,
                    style: purpleTextStyle.copyWith(),
                    decoration: InputDecoration.collapsed(
                      hintText: '',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Password',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                width: double.infinity,
                height: 45,
                padding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: inputFieldColor,
                ),
                child: Center(
                  child: TextFormField(
                    controller: passwordController,
                    cursorColor: primaryColor,
                    obscureText: true,
                    style: purpleTextStyle.copyWith(),
                    decoration: InputDecoration.collapsed(
                      hintText: '',
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 45,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                      context,
                      '/home',
                      (route) => false,
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66),
                    ),
                  ),
                  child: Text(
                    'Sign In',
                    style: whiteTextStyle.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/sign-up');
                  },
                  child: Text(
                    'Create New Account',
                    style: greyTextStyle.copyWith(
                      fontWeight: light,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
