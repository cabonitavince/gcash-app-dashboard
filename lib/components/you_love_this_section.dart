import 'package:flutter/material.dart';
import 'package:gcash_home_screen/models/data_model.dart';

class YouLoveThisSection extends StatelessWidget {
  const YouLoveThisSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DataModel> dataList = [
      DataModel(
          title: "Get up to P5,000 GCash!",
          shortDescription: "Buy participating HP products to enjoy the deal! Valid until July 31, 2022",
          image: "lib/assets/love_this/love-this-1.JPEG"
      ),
      DataModel(
          title: "P40 OFF",
          shortDescription: "Enjoy great discounts on these apps and more this Google Play Mega Day",
          image: "lib/assets/love_this/love-this-2.JPEG"
      ),
      DataModel(
          title: "Ikaw na ba ang LUCKY this week?",
          shortDescription: "Buy Load now to join!\nAvailable to ALL networks!",
          image: "lib/assets/love_this/love-this-3.JPEG"
      ),
      DataModel(
          title: "FREE Huawei P80 vouchers",
          shortDescription: "Celebrating Huawei AppGallery 3rd Anniversary! Claim Huawei free voucher!",
          image: "lib/assets/love_this/love-this-4.JPEG"
      ),
      DataModel(
          title: "G to get fancy?",
          shortDescription: "Shop now and just Pay Later via GGives & GCredit.",
          image: "lib/assets/love_this/love-this-5.JPEG"
      ),
      DataModel(
          title: "Stay fashionably on-trend",
          shortDescription: "Shop now and Pay Later via GGives or GCredit",
          image: "lib/assets/love_this/love-this-6.JPEG"
      ),
      DataModel(
          title: "Save on your grocery!",
          shortDescription: "Use code GCASHFD with a min. spend of P1000.",
          image: "lib/assets/love_this/love-this-7.JPEG"
      ),
      DataModel(
          title: "Flaunt your next fit!",
          shortDescription: "Shop now and Pay Later via GGives & GCredit.",
          image: "lib/assets/love_this/love-this-8.JPEG"
      ),
      DataModel(
          title: "Deliveries made easy!",
          shortDescription: "Get all these discounts when you pay with GCash!",
          image: "lib/assets/love_this/love-this-9.JPEG"
      ),
      DataModel(
          title: "New species alert!",
          shortDescription: "Join us as we extend our green initiative to our shoreline with Mangroves",
          image: "lib/assets/love_this/love-this-10.JPEG"
      ),
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text("You'll love this", style: TextStyle(color: Color(0xff0035a4), fontSize: 18),),
                Expanded(child: SizedBox()),
                Text("Show more", style: TextStyle(fontSize: 13, color: Color(0xff017aff)),),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 9,
                  backgroundColor: Color(0xff017aff),
                  child: Icon(Icons.arrow_forward_outlined, size: 12, color: Colors.white,),
                ),
              ],
            ),
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: dataList.map((model) {
                return customCard(model.title, model.shortDescription, model.image);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget customCard(String title, String shortDescription, String image) {
    return Container(
      width: 250,
      height: 220,
      margin: EdgeInsets.only(right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(image, width: 250, height: 150, fit: BoxFit.fill,),
          ),
          SizedBox(height: 7,),
          Text(title, style: TextStyle(color: Color(0xff0035a4), fontSize: 15),),
          SizedBox(height: 3,),
          Text(shortDescription, style: TextStyle(color: Color(0xff0035a4), fontSize: 11),
            maxLines: 2,
          )
        ],
      ),
    );
  }
}
