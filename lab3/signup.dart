import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: buildBody(),
          ),
        ),
      ),
    );
  }

  Widget buildBody() {
    var _textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w700,
    );

    return ListView(
      // crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(padding: EdgeInsets.all(10),
          child: (
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Login",
                    style: TextStyle(
                        fontSize: 32
                    ),
                  ),
                  Text("Sign Up",
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,

                    ),)
                ],

              )
          ),),

        SizedBox(height: 50),
        Icon(Icons.account_balance_rounded,
          size: 50,
          color: Colors.lightBlueAccent,),
        SizedBox(height: 50),
        TextField(
          decoration: InputDecoration(
              hintText: 'Email Address'
          ),
        ),
        SizedBox(height: 20),
        TextField(
          decoration: InputDecoration(
              hintText: 'Username'
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,

          decoration: InputDecoration(
              hintText: 'Password',
              suffixIcon: Icon(Icons.remove_red_eye)
          ),
        ),
        SizedBox(height: 20),
        TextField(
          obscureText: true,

          decoration: InputDecoration(
              hintText: 'Repeat Password',
              suffixIcon: Icon(Icons.remove_red_eye)
          ),
        ),
        SizedBox(height: 50),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: ElevatedButton(
            onPressed: () {},
            child: Container(
              alignment: Alignment.center,
              height: 50,
              child: Text(
                "SIGN UP",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            style: ButtonStyle(
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  )),
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.lightBlueAccent,

              ),
            ),
          ),

        ),

        Padding(padding: EdgeInsets.all(25),
          child: (
              Row(

                mainAxisAlignment: MainAxisAlignment.center ,
                children: [
                  Text("Already Have an Account ?",
                    style: TextStyle(
                        fontSize: 18
                    ),
                  ),
                  Text("Login",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18
                    ),)
                ],

              )
          ),),
      ],
    );
  }
}
