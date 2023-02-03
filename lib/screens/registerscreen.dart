import 'package:flutter/material.dart';
import 'package:flutterforbeginners2/screens/homescreen.dart';
import 'package:flutterforbeginners2/screens/navbar.dart';
import 'package:flutterforbeginners2/utils/defaults.dart';
import 'package:flutterforbeginners2/widgets/mywidget.dart';


class RegisterScreen extends StatefulWidget {
  RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  MyConfig _myconfig = MyConfig();

  @override
  void initState() {
    super.initState();
  }

  TextEditingController nameControler = TextEditingController();
  TextEditingController emailControler = TextEditingController();
  TextEditingController cellphoneControler = TextEditingController();
  TextEditingController passControler = TextEditingController();
  TextEditingController addressControler = TextEditingController();
  TextEditingController zipcodeControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            color: Colors.white,
            child: SingleChildScrollView(
              
        child: Form(
            child: Column(
              children: [
                Container(
                    // margin: EdgeInsets.only(left: 30,right: 30),
                    child: Image(image: AssetImage("assets/images/signinbg.png")),
                ),
                // Image.asset(
                //   "assets/images/headerimagesmall.png",  // this is Static Image
                //   // height: MediaQuery.of(context).size.height * 0.20,
                //   // width: MediaQuery.of(context).size.width - 70,
                // ),
                SizedBox(
                  height: _myconfig.myHeight * 1,
                ),
                MyInputField(
                    keyboardtype: TextInputType.text,
                    hinttext: "Full Name",
                    // validator: (value) {
                    //   _myconfig.nameValidator(value: value);
                    // },
                    hidedata: false,
                    mycontroller: nameControler,
                    myicon: Icon(
                      Icons.person,
                      color: _myconfig.myButtonbackgroundColor,
                      size: _myconfig.myIconSize,
                    )), // Full Name
                SizedBox(
                  height: _myconfig.myHeight * 1,
                ),
                MyInputField(
                    keyboardtype: TextInputType.emailAddress,
                    // validator: (value) {
                    //   _myconfig.emailValidator(value: value);
                    // },
                    hinttext: "Email",
                    hidedata: false,
                    mycontroller: emailControler,
                    myicon: Icon(
                      Icons.email_outlined,
                      color: _myconfig.myButtonbackgroundColor,
                      size: _myconfig.myIconSize,
                    )), // Email Id
                SizedBox(
                  height: _myconfig.myHeight * 1,
                ),

                MyInputField(
                    keyboardtype: TextInputType.number,
                    hinttext: "Cell Number",
                    // validator: (value) {
                    //   _myconfig.mobileValidator(value: value);
                    // },
                    hidedata: false,
                    mycontroller: cellphoneControler,
                    myicon: Icon(
                      Icons.phone_in_talk_rounded,
                      color: _myconfig.myButtonbackgroundColor,
                      size: _myconfig.myIconSize,
                    )),
                SizedBox(
                  height: _myconfig.myHeight * 1,
                ),
// password removed
                MyInputField(
                    // Password
                    keyboardtype: TextInputType.text,
                    // validator: (value) {
                    //   _myconfig.passwordValidator(value: value);
                    // },
                    hinttext: "******",
                    hidedata: true,
                    mycontroller: passControler,
                    myicon: Icon(
                      Icons.lock_outline_rounded,
                      color: _myconfig.myButtonbackgroundColor,
                      size: _myconfig.myIconSize,
                    )),
                SizedBox(
                  height: _myconfig.myHeight * 1,
                ),
                MyInputField(
                    keyboardtype: TextInputType.streetAddress,
                    hinttext: "Address",
                    // validator: (value) {
                    //   _myconfig.requiredValidator(
                    //       value: value, msg: "Address is Required");
                    // },
                    hidedata: false,
                    mycontroller: addressControler,
                    myicon: Icon(
                      Icons.location_on,
                      color: _myconfig.myButtonbackgroundColor,
                      size: _myconfig.myIconSize,
                    )),
                SizedBox(
                  height: _myconfig.myHeight * 1,
                ),
                MyInputField(
                    keyboardtype: TextInputType.number,
                    hinttext: "Zip Code",
                    // validator: (value) {
                    //   _myconfig.zipValidator(value: value);
                    // },
                    hidedata: false,
                    mycontroller: zipcodeControler,
                    myicon: Icon(
                      Icons.map_outlined,
                      color: _myconfig.myButtonbackgroundColor,
                      size: _myconfig.myIconSize,
                    )),

                SizedBox(
                  height: _myconfig.myHeight * 2,
                ),
                MyButton(
                  btnwidth:
                      MediaQuery.of(context).size.width - _myconfig.myMargin * 5,
                  bgcolor: _myconfig.myButtonbackgroundColor,
                  btntextsize: 17,
                  buttontext: "SIGN UP",
                  textcolor: _myconfig.myButtonTextColor,
                  onTap: () async {
                    _submit();
                  },
                ),
                SizedBox(
                  height: _myconfig.myHeight * 2,
                ),
                TermCondition(),
                SizedBox(
                  height: _myconfig.myHeight * 2,
                ),
                
                SizedBox(
                  height: _myconfig.myHeight * 2,
                ),
              ],
            ),
        ),
      ),
          )),
    );
  }

  void _submit() async {
        // final isValid = _formKey.currentState!.validate();
        // if (!isValid) {
        //   return;
        // } else {
        if (nameControler.text.isEmpty) {
          //print(nameControler.toString());
          _myconfig.toast(msg: "Please Enter Full Name");
          return;
        }

        if (!_myconfig.nameValidator(value: nameControler.text)) {
          _myconfig.toast(msg: "Please Enter Full Name");
          return;
        }

        if (emailControler.text.isEmpty) {
          _myconfig.toast(msg: "Please Enter Email");
          return;
        }

        if (!_myconfig.emailValidator(value: emailControler.text)) {
          _myconfig.toast(msg: "Please Enter Valid Email");
          return;
        }

        if (cellphoneControler.text.isEmpty) {
          _myconfig.toast(msg: "Please Enter Cell Phone");
          return;
        }

        // if (!_myconfig.mobileValidator(value: cellphoneControler.text)) {
        //   _myconfig.toast(msg: "Please Enter Valid Cell Phone");
        //   return;
        // }

        // if (!_myconfig.passwordValidator(value: passControler.text)) {
        //   _myconfig.toast(
        //       msg:
        //           "Password must have at least one upper character, one number and one Special Character");
        //   return;
        // }
        if (addressControler.text.isEmpty) {
          _myconfig.toast(msg: "Please Enter Address");
          return;
        }
        if (zipcodeControler.text.isEmpty) {
          _myconfig.toast(msg: "Please Enter Zip Code");
          return;
        }

        Navigator.push(
        context, MaterialPageRoute(builder: (_) => BottomNavbarScreen()));

    // if (!_myconfig.zipValidator(value: zipcodeControler.text)) {
    //   _myconfig.toast(msg: "Zipcode is Invalid");
    //   return;
    // }

// Navigator.of(context).pushReplacement(
//   new MaterialPageRoute(
//     settings: const RouteSettings(name: '/otp'),
//     builder: (context) => OtpScreen (
//       email: 'myemail@flutter.com',

//     ),
//   ),
// );
  }
}
