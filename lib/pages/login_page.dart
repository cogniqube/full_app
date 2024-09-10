import 'package:flutter/material.dart';
import 'package:full_app/pages/home.dart';

class loginPage extends StatelessWidget {
  const loginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                Spacer(),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Well Come to Cogni Qube',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 22,
                ),
                Text(
                  'Login to Continue',
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white70,
                      fontSize: 23,
                      letterSpacing: 1),
                ),
                SizedBox(
                  height: 22,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15)),
                    ),
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.5),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {
                      print('Forget is clicked');
                    },
                    child: Text('Forget Password ?'),
                    style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                    ),
                  ),
                ),
                // Spacer(),
                SizedBox(
                  width: 230,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return HomePage();
                            },
                          ),
                        );
                        Navigator.of(context).pushNamed('/home');
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          foregroundColor: Colors.black),
                      child: Text(
                        'Login',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w800),
                      )),
                ),
                Spacer(),

                Text(
                  'Or Login with',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {
                      print('Google is clicked');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/google.png',
                          height: 22,
                          width: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Login into Google')
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50),
                        ),
                      ),
                    ),
                    onPressed: () {
                      print('Facebook is clicked');
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/facebook.png',
                          height: 22,
                          width: 22,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('Login into Facebook')
                      ],
                    ),
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text("Don't have an account?",
                        style: TextStyle(color: Colors.white)),
                    TextButton(
                      onPressed: () {
                        print('Sign up is clicked');
                      },
                      child: Text(
                        'sign up',
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold,
                            color: Colors.amber),
                      ),
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
