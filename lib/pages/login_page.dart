import 'package:flutter/material.dart';
import 'package:mantis/pages/sign_up_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Image.asset('assets/logo.png', height: 30, width: 30),
            SizedBox(width: 8),
            Text('Mantis', style: TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
      ),

      backgroundColor: Colors.white,
      body: LayoutBuilder(
        builder: (context, constraints) {
          double maxWidth = constraints.maxWidth;
          return Padding(
            padding: EdgeInsets.only(top: 200),
            child: SingleChildScrollView( 
              child: Center(
                child: Container(
                  width: maxWidth > 650 ? 500 : maxWidth * 0.9,
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
                            'Login',
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
                                  builder: (context) => SignUpPage(),
                                ),
                              );
                            },
                            child: Text(
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 25),

                      Text(
                        'Username',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),

                      TextField(
                        controller: _userNameController,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 10),

                      TextField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(
                              width: 1,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: false,
                                onChanged: (value) {
                                  value != value;
                                },
                              ),

                              Text(
                                'Keep me sign in',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
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
                              'Login',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey[300],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: Text(
                              'Login with',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),

                          Expanded(
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey[300],
                            ),
                          ),
                        ],
                      ),

                      SizedBox(height: 20),

                      Row(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/google.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Google'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/twitter.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Twitter'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Expanded(
                            child: InkWell(
                              onTap: () {},
                              child: Container(
                                padding: EdgeInsets.all(6),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/facebook.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    SizedBox(width: 8),
                                    Text('Facebook'),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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
