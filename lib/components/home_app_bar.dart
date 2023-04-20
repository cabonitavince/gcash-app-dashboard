import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String gCashLogo = "lib/assets/gcash-logo.png";

    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 10, right: 10, top: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Image.asset(gCashLogo, height: 38, width: 38,),
                SizedBox(width: 5,),
                Text("Hello", style: TextStyle(fontSize: 23, color: Color(0xff0035a4)),)
              ],
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
            decoration: BoxDecoration(
                color: Color(0xff017aff),
                borderRadius: BorderRadius.circular(7)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("AVAILABLE BALANCE", style: TextStyle(
                    color: Colors.white60, fontSize: 10
                )),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Text("P 1,255,999.25", style: TextStyle(color: Colors.white, fontSize: 25,
                        fontWeight: FontWeight.w900),),
                    Expanded(child: SizedBox()),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffdcedff)
                      ),
                      child: Text("+ Cash in", style: TextStyle(color: Color(0xff017aff), fontSize: 13),),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
