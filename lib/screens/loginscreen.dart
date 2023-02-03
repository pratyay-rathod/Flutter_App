import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/screens/registerscreen.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';

final countrycode = "+91";

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MyConfig _myconfig = MyConfig();

  TextEditingController cellphoneControler = TextEditingController();

  String devicetokenid = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Container(
                child: Form(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child:
                            Image(image: AssetImage("assets/images/signinbg.png")),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 60.0, bottom: 30.0),
                        child: MyInputField(
                            keyboardtype: TextInputType.number,
                            myicon: Icon(Icons.phone_in_talk_outlined,
                                color: Colors.yellow),
                            mycontroller: cellphoneControler,
                            hidedata: false,
                            hinttext: "Enter Phone"),
                      ),
                      Container(
                        child: MyButton(
                            btnwidth: 280,
                            btntextsize: 14,
                            buttontext: "SEND OTP",
                            textcolor: Colors.black,
                            onTap: () async {
                                  _submit();
                                },
                            bgcolor: Color.fromARGB(255, 240, 176, 38)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0),
                        child: MyButton(
                            btnwidth: 280,
                            btntextsize: 14,
                            buttontext: "CONTINUE WITHOUT LOGIN",
                            textcolor: Colors.black,
                            onTap: () {},
                            bgcolor: Color.fromARGB(255, 240, 176, 38)),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 15.0, bottom: 15.0),
                        child: RichText(
                          text: TextSpan(
                            text: 'by signing, you agree to our ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 3, 0, 0), fontSize: 10),
                            /*defining default style is optional */
                            children: <TextSpan>[
                              TextSpan(
                                  text: 'Terms and Conditions',
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 226, 34, 34),
                                    fontSize: 10,
                                    decoration: TextDecoration.underline,
                                  )),
                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _submit() async {
    if (cellphoneControler.text.isEmpty) {
      _myconfig.toast(msg: "Please Enter The Phone Number");
      return;
    }
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => RegisterScreen()));
  }
}
