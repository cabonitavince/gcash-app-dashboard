import 'package:flutter/material.dart';

class MegaDealsSection extends StatelessWidget {
  const MegaDealsSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> megaDealsImages = [
      "lib/assets/mega_deals/mega-deals-1.JPEG",
      "lib/assets/mega_deals/mega-deals-2.JPEG",
      "lib/assets/mega_deals/mega-deals-3.JPEG",
      "lib/assets/mega_deals/mega-deals-4.JPEG",
      "lib/assets/mega_deals/mega-deals-5.JPEG",
      "lib/assets/mega_deals/mega-deals-6.JPEG",
      "lib/assets/mega_deals/mega-deals-7.JPEG",
      "lib/assets/mega_deals/mega-deals-8.JPEG",
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Text("Mega Deals", style: TextStyle(color: Color(0xff0035a4), fontSize: 18),)),
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: megaDealsImages.map((image) {
                return megaDealsCard(image);
              }).toList(),
            ),          ),
        ],
      ),
    );
  }

  Widget megaDealsCard(String image) {
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(image, width: 290, height: 130, fit: BoxFit.fill,),
      ),
    );
  }
}
