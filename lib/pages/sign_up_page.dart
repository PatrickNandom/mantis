import 'package:flutter/material.dart';
import 'package:mantis/pages/login_page.dart';
import 'package:mantis/widgets/custom_text_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _firstNameController = TextEditingController();
  final _middleNameController = TextEditingController();
  final _lastNameController = TextEditingController();

  final _userNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  final _addressController = TextEditingController();
  final _passwordController = TextEditingController();

  final _orgNameController = TextEditingController();
  final _orgDescrriptionController = TextEditingController();

  final _orgEmailController = TextEditingController();
  final _orgPhoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          return Padding(
            padding: EdgeInsets.only(top: 100),
            child: SingleChildScrollView(
              child: Center(
                child: Container(
                  width: maxWidth > 650 ? 600 : maxWidth * 0.9,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(width: 1, color: Colors.grey),
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'SignUp',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          InkWell(
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LoginPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Already have an account?',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Text(
                        'Organization Admin details',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      Divider(thickness: 1, color: Colors.grey),
                      SizedBox(height: 10),

                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              labelName: 'First Name*',
                              hintText: 'First Name',
                              controller: _firstNameController,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Middle Name*',
                              hintText: 'Middle Name',
                              controller: _middleNameController,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Last Name*',
                              hintText: 'Last Name',
                              controller: _lastNameController,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),

                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              labelName: 'username*',
                              hintText: 'Userame',
                              controller: _userNameController,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Email*',
                              hintText: 'Email Address',
                              controller: _emailController,
                            ),
                          ),
                          SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Phone*',
                              hintText: 'Phone',
                              controller: _phoneController,
                            ),
                          ),
                        ],
                      ),

                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Address*',
                              hintText: 'Address',
                              controller: _addressController,
                            ),
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Password*',
                              hintText: 'Password',
                              controller: _passwordController,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      Text(
                        'Organization Information',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),

                      Divider(thickness: 1, color: Colors.grey),
                      SizedBox(height: 10),

                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Organization Name*',
                              hintText: 'Organization Name',
                              controller: _orgNameController,
                            ),
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Description',
                              hintText: 'Description',
                              controller: _orgDescrriptionController,
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Organization Email*',
                              hintText: 'Email Address',
                              controller: _orgEmailController,
                            ),
                          ),

                          SizedBox(width: 10),
                          Expanded(
                            child: CustomTextField(
                              labelName: 'Organization Phone',
                              hintText: 'Phone',
                              controller: _orgPhoneController,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),

                      RichText(
                        text: TextSpan(
                          style: TextStyle(color: Colors.black, fontSize: 14),
                          children: [
                            TextSpan(text: 'By Signing Up, you agree to our'),
                            TextSpan(
                              text: ' Terms of service',
                              style: TextStyle(color: Colors.blue),
                            ),
                            TextSpan(text: ' and'),
                            TextSpan(
                              text: ' Privacy Policy',
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 10),

                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: EdgeInsets.all(8),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.blue,
                          ),
                          child: Center(
                            child: Text(
                              'Create Account',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
