import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wefast/home.dart';

class Proof extends StatefulWidget {
  const Proof({Key? key}) : super(key: key);

  @override
  _ProofState createState() => _ProofState();
}

class _ProofState extends State<Proof> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color:Color(0xffa3181f),
            size: 35,
          ),
        ),
        title: Text(
          'RoadRunner',
          style: GoogleFonts.openSans(
              fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xffa3181f)),
        ),
        actions: [
          Container(
            padding: EdgeInsets.all(10),
            child: Image.asset('assets/help.png',
                height: 25, width: 25, color: Color(0xffa3181f)),
          )
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.9,
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Registration',
                    style: GoogleFonts.openSans(
                        fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Address Proof',
                    style: GoogleFonts.openSans(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color:  Color(0xfffbb867).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AADHAR CARD / PAN CARD',
                              style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'FRONT SIDE',
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Color(0xffa3181f),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Upload',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        ),
                        Image.asset(
                          'assets/idcard.png',
                          height: 70,
                          width: 70,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color:  Color(0xfffbb867).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'AADHAR CARD / PAN CARD',
                              style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'BACK SIDE',
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color:Color(0xffa3181f),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Upload',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        ),
                        Image.asset(
                          'assets/idcard.png',
                          height: 70,
                          width: 70,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Photo',
                    style: GoogleFonts.openSans(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color:  Color(0xfffbb867).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Upload new photo',
                              style: GoogleFonts.openSans(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Photo must be clear',
                              style: GoogleFonts.openSans(
                                fontSize: 12,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color:Color(0xffa3181f),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Text(
                                  'Upload',
                                  style: GoogleFonts.openSans(
                                    color: Colors.white,
                                  ),
                                )),
                          ],
                        ),
                        Image.asset(
                          'assets/user.png',
                          height: 80,
                          width: 80,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Promo Code',
                    style: GoogleFonts.openSans(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 260,
                    decoration: BoxDecoration(
                        color:  Color(0xfffbb867).withOpacity(0.2),
                        borderRadius: BorderRadius.circular(10)),
                    child: TextFormField(
                      style: TextStyle(color: Colors.black, fontSize: 15),
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.name,
                      decoration: new InputDecoration(
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
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                         MaterialPageRoute(builder: (context) => Home()),
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
                          'Next',
                          style: GoogleFonts.openSans(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
