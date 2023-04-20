import 'package:flutter/material.dart';
import 'package:gcash_home_screen/models/data_model.dart';

class GoCashlessSection extends StatelessWidget {
  const GoCashlessSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<DataModel> dataList = [
      DataModel(
          image: "lib/assets/go_cashless/go-cashless-image-1.png",
          title: "Become a GForest Champion Today!"
      )
    ];

    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child:  Text("Go cashless now", style: TextStyle(color: Color(0xff0035a4), fontSize: 18),),
          ),
          SizedBox(height: 15,),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: dataList.map((model) {
                return customCard(model.image, model.title);
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget customCard(String image, String title) {
    return Container(
      width: 125,
      height: 160,
      margin: EdgeInsets.only(right: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.asset(image, width: 130, height: 100, fit: BoxFit.fill,),
          ),
          SizedBox(height: 5,),
          Text(title, style: TextStyle(fontSize: 13, color: Colors.black),)
        ],
      ),
    );
  }
}
