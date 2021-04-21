import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:future_jobs/theme.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isHasImage = false;
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController motivationController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: ListView(
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
                'Begin New Journey',
                style: blackTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isHasImage = !isHasImage;
                    });
                  },
                  child: Container(
                    width: 120,
                    height: 120,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: primaryColor,
                      ),
                    ),
                    child: isHasImage
                        ? Image.asset(
                            'assets/image_profile.png',
                          )
                        : Image.asset(
                            'assets/icon_upload.png',
                          ),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                'Full Name',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: nameController,
                cursorColor: primaryColor,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 28, bottom: 20, top: 20),
                  fillColor: Color(0xffF1F0F5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: '',
                ),
                style: purpleTextStyle,
              ),
              SizedBox(
                height: 20,
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
              TextFormField(
                controller: emailController,
                cursorColor: primaryColor,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 28, bottom: 20, top: 20),
                  fillColor: Color(0xffF1F0F5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: EmailValidator.validate(emailController.text)
                          ? primaryColor
                          : Colors.red,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: '',
                ),
                style: EmailValidator.validate(emailController.text)
                    ? purpleTextStyle
                    : redTextStyle,
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
              TextFormField(
                controller: passwordController,
                cursorColor: primaryColor,
                obscureText: true,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 28, bottom: 20, top: 20),
                  fillColor: Color(0xffF1F0F5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: '',
                ),
                style: purpleTextStyle,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Motivation',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: motivationController,
                cursorColor: primaryColor,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.only(left: 28, bottom: 20, top: 20),
                  fillColor: Color(0xffF1F0F5),
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      color: primaryColor,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  hintText: '',
                ),
                style: purpleTextStyle,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                height: 45,
                width: double.infinity,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(66),
                    ),
                  ),
                  child: Text(
                    'Sign Up',
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
                    Navigator.pushNamed(context, '/sign-in');
                  },
                  child: Text(
                    'Back to Sign In',
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
