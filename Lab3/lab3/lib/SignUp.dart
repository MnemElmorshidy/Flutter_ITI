import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return signupState();
  }
}

class signupState extends State<StatefulWidget> {
  var _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30.0),
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 25,
                        color: Colors.black,

                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/logo2.png"),
                  ),
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                alignment: Alignment.center,
              ),
              Container(
                width: 300,
                child: TextField(
                  style: TextStyle(color: Colors.black45, fontSize: 15),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: "Username",
                  ),
                  maxLines: 1,
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                  style: TextStyle(color: Colors.black45, fontSize: 15),
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                    hintText: "Email Address",
                  ),
                  maxLines: 1,
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                  obscureText: _isObscure,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                  ),
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Password",
                  ),
                  maxLines: 1,
                ),
              ),
              Container(
                width: 300,
                child: TextField(
                  obscureText: _isObscure,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 15,
                  ),
                  cursorColor: Colors.grey,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    hintText: "Confirm Password",
                  ),
                  maxLines: 1,
                ),
              ),
              SizedBox(height: 15),

              SizedBox(
                height: 30,
              ),
              Container(
                width: 300,
                child: ElevatedButton(
                    child: Text(
                      "SignUp",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    style: ButtonStyle(
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.blue),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                              side: BorderSide(color: Colors.blue))),
                    )),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already Have an account:"),
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}