import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wefast/registration/register.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  _OtpState createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: Text(
      //     'RoadRunner',
      //     style: GoogleFonts.openSans(
      //         fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xffa3181f)),
      //   ),
      //   leading: IconButton(
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //     icon: Icon(
      //       Icons.chevron_left,
      //       color: Color(0xffa3181f),
      //       size: 35,
      //     ),
      //   ),
      //   actions: [
      //     Container(
      //       padding: EdgeInsets.all(10),
      //       child: Image.asset('assets/help.png',
      //           height: 25, width: 25, color:Color(0xffa3181f)),
      //     )
      //   ],
      // ),
      body: Container( decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/bg.png'),fit: BoxFit.cover)
      ),
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [SizedBox(height:45 ,),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Image.asset('assets/roadrunner.png',
                    color: Color(0xffa3181f),height: 250,),
                ),
                Text(
                  'Enter code',
                  style: GoogleFonts.openSans(
                      fontSize: 25, fontWeight: FontWeight.bold,color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Enter the OTP sent to +91 9137757935',
                  style: GoogleFonts.openSans(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 35,
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 35),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        decoration: new InputDecoration(
                          helperStyle: TextStyle(color: Colors.transparent),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 55,
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 35),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        decoration: new InputDecoration(
                          helperStyle: TextStyle(color: Colors.transparent),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 55,
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 35),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        decoration: new InputDecoration(
                          helperStyle: TextStyle(color: Colors.transparent),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 55,
                      decoration: BoxDecoration(
                          color:  Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 35),
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                        ],
                        cursorColor: Colors.black,
                        keyboardType: TextInputType.phone,
                        decoration: new InputDecoration(
                          helperStyle: TextStyle(color: Colors.transparent),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          contentPadding: EdgeInsets.only(
                              left: 15, bottom: 11, top: 11, right: 15),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Container(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Send Code Again',
                        style: GoogleFonts.openSans(
                          fontSize: 15,
                          color: Colors.red,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Image.asset('assets/reset.png',
                          height: 15, width: 15, color: Colors.red),
                    ],
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
                      MaterialPageRoute(builder: (context) => Register()),
                    );
                  },
                  child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          color:Color(0xffa3181f),
                          borderRadius: BorderRadius.circular(10)),
                      child: Text(
                        'Continue',
                        style: GoogleFonts.openSans(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      )),
                ),SizedBox(
                  height: 15,
                ),GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Go Back',
                    style: GoogleFonts.openSans(
                      fontSize: 15,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
