import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({Key key}) : super(key: key);

  @override
  State<HomeBottomNavigationBar> createState() => _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Color(0xff111099),
      unselectedItemColor: Colors.blueGrey.withOpacity(0.5),
      type: BottomNavigationBarType.fixed,
      selectedFontSize: 10,
      unselectedFontSize: 10,
      elevation: 0,

      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.email_outlined),
            label: "Inbox"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner_outlined),
            label: "Pay QR"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.pending_actions_outlined),
            label: "Activity"
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: "Profile"
        ),
      ],
    );
  }
}
