import 'package:flutter/material.dart';
import 'package:odev3/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WelcomePage(),
    );
  }
}
class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);
  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Text("Welcome", style: TextStyle(fontSize: 36,color: mainTitle,fontFamily: "LatoBold"),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              "Welcome to our newest application. Please proceed with your account or create one.",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, fontFamily: "LatoRegular", color: contextText),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Container(
              height: MediaQuery.of(context).size.height/2,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("photos/welcome.png")
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Column(
              children: [
                SizedBox(width: MediaQuery.of(context).size.width-48,height: 60,
                  child: MaterialButton(onPressed: (){},
                  minWidth: double.infinity,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: btnStroke
                    ),
                    borderRadius: BorderRadius.circular(50)
                  ),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        color: btnStroke,
                        fontSize: 24,
                        fontFamily: "LatoBold",),
                    ),
                  )
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: SizedBox(width: MediaQuery.of(context).size.width-48,height: 60,
                      child: MaterialButton(onPressed: (){},
                        minWidth: double.infinity,
                        color: btnBackground,
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: btnStroke
                            ),
                            borderRadius: BorderRadius.circular(50)
                        ),
                        child: Text(
                          "Sign up",
                          style: TextStyle(
                            color: whiteText,
                            fontSize: 24,
                            fontFamily: "LatoBold",),
                        ),
                      )
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

