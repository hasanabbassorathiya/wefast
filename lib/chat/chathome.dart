import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wefast/Notifications/notifications.dart';

import 'chatpage.dart';

class ChatHome extends StatefulWidget{



  @override
  _ChatHomeState createState() => _ChatHomeState();
}

class _ChatHomeState extends State<ChatHome> {
  static  List<Widget> _widgetOptions = <Widget>[
    ChatPage(),
    Notifications(),


  ];
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/chat.png'),size: 20,
              color: Color(0xffa3181f),),
            title: Text("Chats",style: GoogleFonts.openSans(
                fontSize: 12, fontWeight: FontWeight.w500,  color: Color(0xffa3181f),),),
          ),

          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/notification.png'),size: 20,
              color: Color(0xffa3181f),),
            title: Text("Notifications",style: GoogleFonts.openSans(
                fontSize: 12, fontWeight: FontWeight.w500,  color: Color(0xffa3181f),),),
          ),
        ],
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,
      ),
    );
  }
}