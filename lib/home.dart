import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wefast/chat/chathome.dart';
import 'package:wefast/screens/profile.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
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
            color: Color(0xffa3181f),
            size: 35,
          ),
        ),
        title: Text(
          'Orders',
          style: GoogleFonts.openSans(
              fontSize: 25, fontWeight: FontWeight.w500, color: Color(0xffa3181f),),
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
              child: Image.asset('assets/profile.png',
                  height: 25, width: 25, color:Color(0xffa3181f),),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            // give the tab bar a height [can change hheight to preferred height]
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: Color(0xfffbb867).withOpacity(0.2),
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: TabBar(
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
                    text: 'Available',
                  ),

                  // second tab [you can add an icon using the icon property]
                  Tab(
                    text: 'Active',
                  ),
                  Tab(
                    text: 'Completed',
                  ),
                ],
              ),
            ),
            // tab bar view here
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  // first tab bar view widget
                  ListView.separated( separatorBuilder: (BuildContext context, int index) => const Divider(),
                      itemCount: 5,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          width: double.infinity,
                          padding: EdgeInsets.all(15),
                          margin: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Color(0xfffbb867).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Rupees',
                                    style: GoogleFonts.openSans(
                                      fontSize: 20,fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),Text(
                                    '150',
                                    style: GoogleFonts.openSans(
                                      fontSize: 20,fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '2 Address',
                                    style: GoogleFonts.openSans(
                                      fontSize: 20,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Container(width: MediaQuery.of(context).size.width*0.55,
                                    child: Text(
                                      'Arrive from 8:00 am to 8:30 am',
                                      style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),SizedBox(height: 15,),
                                  Container(width: MediaQuery.of(context).size.width*0.55,
                                    child: Text(
                                      'Rassaz Shopping Mall And Multiplex, Near Mira Bhayander BMC Office, Opp.Wockhart Hospital, Mumbai, Maharashtra 401107, India',
                                      style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ), maxLines: 5,
                                    ),
                                  ),SizedBox(height: 15,),
                                  Container(width:  MediaQuery.of(context).size.width*0.55,
                                    child: Text(
                                      'Rassaz Shopping Mall And Multiplex, 2nd floor, Evershine Nagar, N.H.School Road, Naya Nagar, Near Mira Bhayander BMC Office, Opp.Wockhart Hospital, Mumbai, Maharashtra 401107, India',
                                      style: GoogleFonts.openSans(
                                        fontSize: 15,
                                        color: Colors.black,
                                      ), maxLines: 5,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      }),

                  // second tab bar view widget
                  Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
