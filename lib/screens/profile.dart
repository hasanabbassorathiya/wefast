import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wefast/account/login.dart';
import 'package:wefast/chat/chathome.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffa3181f),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ChatHome()),
          );
        },
        child: Image.asset('assets/chat.png',
            height: 25, width: 25, color: Colors.white),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.chevron_left,
            color:  Color(0xffa3181f),
            size: 35,
          ),
        ),
        title: Text(
          'My Account',
          style: GoogleFonts.openSans(
              fontSize: 25, fontWeight: FontWeight.w500, color:  Color(0xffa3181f)),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/help.png',
                  height: 25, width: 25, color:  Color(0xffa3181f)),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            SingleChildScrollView(
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Color(0xfffbb867).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: TabBar(
                  isScrollable: true,
                  controller: _tabController,
                  // give the indicator a decoration (color and border radius)
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    color: Color(0xffa3181f),
                  ),
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.black,
                  tabs: [
                    // first tab [you can add an icon using the icon property]
                    Tab(
                      text: 'You Today',
                    ),

                    // second tab [you can add an icon using the icon property]
                    Tab(
                      text: 'Profile',
                    ),
                    Tab(
                      text: 'Settings',
                    ),
                    Tab(
                      text: 'Statistics',
                    ),
                    Tab(
                      text: 'Promo Codes',
                    ),
                  ],
                ),
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [

                  // first tab bar view widget----------------------------------

                  Center(
                    child: Text(
                      'Not Available',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  // second tab bar view widget---------------------------------
                  Container(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Container(
                            width: double.infinity,
                            height: 120,
                            child: Container(
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                                radius: 80.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            "Rajat Palankar",
                            style: GoogleFonts.openSans(
                              fontSize: 25,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Belgaum, India",
                            style: GoogleFonts.openSans(
                              fontSize: 20,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "+91 9137757935",
                            style: GoogleFonts.openSans(
                              fontSize: 18,
                              color: Colors.black45,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Color(0xfffbb867).withOpacity(0.2),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 8.0),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Completed Orders",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.openSans(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "5",
                                          style: GoogleFonts.openSans(
                                            fontSize: 20,
                                            color: Colors.black45,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      children: [
                                        Text(
                                          "Your Rating",
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.openSans(
                                            fontSize: 18,
                                            color: Colors.black,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "4.5",
                                          style: GoogleFonts.openSans(
                                            fontSize: 20,
                                            color: Colors.black45,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Login()),
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
                                  'Sign Out',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // third tab bar view widget----------------------------------

                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        ExpandableCard(),
                        ExpandableCard(),
                        ExpandableCard(),
                        ExpandableCard(),
                        ExpandableCard(),
                        ExpandableCard(),
                        ExpandableCard(),
                        ExpandableCard(),
                        ExpandableCard(),
                        ExpandableCard(),
                      ],
                    ),
                  ),

                  // fourth tab bar view widget---------------------------------

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Color(0xfffbb867).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Your rating:',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '4.5',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Orders completed:',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '0',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Cash:',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '500\$',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  'Cashless:',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                Text(
                                  '0',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Balance',
                              style: GoogleFonts.openSans(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '0',
                              style: GoogleFonts.openSans(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Color(0xfffbb867).withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10)),
                        child: Theme(
                          data: ThemeData()
                              .copyWith(dividerColor: Colors.transparent),
                          child: ExpansionTile(
                            title: Text(
                              'My Income',
                              style: GoogleFonts.openSans(
                                  fontSize: 20,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600),
                            ),
                            children: <Widget>[
                              ListTile(
                                title: Text(
                                  'Verified',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                trailing: Text(
                                  '0',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'In last week',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                trailing: Text(
                                  '0',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              ListTile(
                                title: Text(
                                  'In last month',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                                trailing: Text(
                                  '0',
                                  style: GoogleFonts.openSans(
                                    fontSize: 20,
                                    color: Colors.black,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  //fifth tab bar view widget--------------------------------------------------

                  SingleChildScrollView(
                    child: Column(
children: [
  Container(
    margin: EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Coupons',
          style: GoogleFonts.openSans(
              fontSize: 20,
              color: Colors.black,
             ),
        ),
        Text(
          '1',
          style: GoogleFonts.openSans(
              fontSize: 20,
              color: Colors.black,
              ),
        ),
      ],
    ),
  ),

  Container(
    margin: EdgeInsets.symmetric(vertical: 10),

    decoration: BoxDecoration(color: Color(0xfffbb867).withOpacity(0.2),
      borderRadius: BorderRadius .circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 55.0,
            spreadRadius: 2,
          ),
        ]
    ),
    
    child: Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
      Container(padding: EdgeInsets.all(20),
        child: Text(
          'Get 100 bonus points',
          style: GoogleFonts.openSans(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ), Container(padding: EdgeInsets.all(20),
        child: Text(
          'Send this promo code to your friend',
          style: GoogleFonts.openSans(
            fontSize: 15,
            color: Colors.grey.withOpacity(0.8),
          ),
        ),
      ), Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius .only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
color: Color(0xffa3181f)
          ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'RX4499P',
              style: GoogleFonts.openSans(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius .circular(10),
                color: Colors.white
            ),
              child: Text(
                'copy',
                style: GoogleFonts.openSans(
                    fontSize: 15,
                    color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    ],),
  ),
  Divider(
    color: Colors.grey,
  ),
  Container(
    margin: EdgeInsets.symmetric(vertical: 10),

    decoration: BoxDecoration(color: Color(0xfffbb867).withOpacity(0.2),
      borderRadius: BorderRadius .circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 55.0,
            spreadRadius: 2,
          ),
        ]
    ),

    child: Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: [
      Container(padding: EdgeInsets.all(20),
        child: Text(
          'Got Promo Code?',
          style: GoogleFonts.openSans(
            fontSize: 20,
            color: Colors.black,
          ),
        ),
      ), Container(padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius .only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
color: Color(0xffa3181f)
          ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(width: 200,
              decoration: BoxDecoration(
                    color: Colors.white,
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
                    labelText: 'ENTER CODE',
                    labelStyle:   GoogleFonts.openSans(
                    fontSize: 15,
                    color: Colors.grey,
                ),
                ),

              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius .circular(10),
                color: Colors.white
            ),
              child: Text(
                'Activate',
                style: GoogleFonts.openSans(
                    fontSize: 15,
                    color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    ],),
  ),

],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExpandableCard extends StatelessWidget {
  const ExpandableCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
          color: Color(0xffa3181f), borderRadius: BorderRadius.circular(10)),
      child: Theme(
        data: ThemeData().copyWith(dividerColor: Colors.transparent),
        child: ExpansionTile(
          title: Text(
            'Account Status',
            style: TextStyle(
                color: Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w500),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                'Verified',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
