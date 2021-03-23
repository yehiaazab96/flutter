import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  Splash({Key key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Container(
          child: Stack(
            children: [
              Positioned.fill(
                  child: Container(
                    color: Colors.lightBlueAccent,
                  )
              ),
              Positioned.fill(
                  child: Container(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Spacer(flex: 2,),
                        Container(
                          height: 150,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(75)
                            ,border: Border.all(
                            color: Colors.white,
                            width: 1
                          ),
                            image: DecorationImage(
                              image: AssetImage(
                                  'assets/images/icon.png'),

                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          "GoKart",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                          ),
                        ),
                        Spacer(flex: 4,),
                        
                      ],
                    ),
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
