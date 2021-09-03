import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
            color: Color(0xffa3181f),
            size: 35,
          ),
        ),
        title: Text(
          'Notifications',
          style: GoogleFonts.openSans(
              fontSize: 25, fontWeight: FontWeight.w500,  color: Color(0xffa3181f),),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Profile()),
              // );
            },
            child: Container(
              padding: EdgeInsets.all(10),
              child: Image.asset('assets/profile.png',
                  height: 25, width: 25,  color: Color(0xffa3181f),),
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context,int index){
            return Container(margin: EdgeInsets.symmetric(vertical: 1,horizontal: 10),
              decoration: BoxDecoration(
                color: Color(0xffa3181f),
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: ListTile(
                  leading:Image.asset('assets/notification.png',height: 20,color: Colors.white,),
                  trailing: Text("Now",
                    style: GoogleFonts.openSans(
                        fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white),),
                  title:Text("You Have $index Notification" ,style: GoogleFonts.openSans(
                      fontSize: 15, fontWeight: FontWeight.w500, color: Colors.white),)
              ),
            );
          }
      ),

    );
  }
}
