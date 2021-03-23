import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
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

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(padding: EdgeInsets.all(10),
          child: (
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Login",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32
                    ),
                  ),
                  Text("Sign Up",
                    style: TextStyle(
                        fontSize: 32
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
              hintText: 'Username or Email Address'
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
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forget Password?",
              style: _textStyle,
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
                  "LOG IN",
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
                    Text("Don't Have an Account ?",
                      style: TextStyle(
                          fontSize: 18
                      ),
                    ),
                    Text("Register",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),)
                  ],

                )
            ),),
          Text("Continue With"),
          Padding(padding: EdgeInsets.all(25),
            child: (
                Row(

                  mainAxisAlignment: MainAxisAlignment.center ,
                  children: [
                    Container(
                      child: SizedBox(height: 70, width: 70,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35)
                        ,border: Border.all(
                          color: Colors.white,
                          width: 1
                      ),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/google.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      child: SizedBox(height: 70, width: 70,),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35)
                        ,border: Border.all(
                          color: Colors.white,
                          width: 1
                      ),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/Facebook.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                )
            ),),
        ],
      ),
    );
  }
}
