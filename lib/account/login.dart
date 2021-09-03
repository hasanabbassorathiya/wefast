import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Otp.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Text(
      //     'Welcome',
      //     style: GoogleFonts.openSans(
      //         fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xffa3181f)),
      //   ),
      //   actions: [
      //     Container(
      //       padding: EdgeInsets.all(10),
      //       child: Image.asset('assets/help.png',
      //           height: 25, width: 25, color: Color(0xffa3181f)),
      //     )
      //   ],
      // ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/SS.png'),fit: BoxFit.cover)
        ),
        padding: EdgeInsets.all(15),

        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height:45 ,),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Image.asset('assets/roadrunner.png',
                       color: Color(0xffa3181f),height: 250,),
                ),
                Text(
                  'Enter your phone number',
                  style: GoogleFonts.openSans(
                      fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'You will receive an SMS on this number',
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  width: 260,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    cursorColor: Colors.black,
                    keyboardType: TextInputType.phone,
                    decoration: new InputDecoration(
                        prefixText: '+91 ',
                        prefixStyle:
                            TextStyle(color: Colors.black, fontSize: 15),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(
                            left: 15, bottom: 11, top: 11, right: 15),
                        labelText: "Phone Number",
                        labelStyle: TextStyle(
                          color: Colors.black,
                        )),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Otp()),
                    );
                  },
                  child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color: Color(0xffa3181f),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Login/Register',
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'By proceeding, I agree to the',
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      ' Terms of use',
                      style: GoogleFonts.openSans(
                        fontSize: 15,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
