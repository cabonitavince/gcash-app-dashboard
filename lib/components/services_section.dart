import 'package:flutter/material.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String cashInLogo = "lib/assets/services_logo/cash-in-logo.png";
    final String sendLogo = "lib/assets/services_logo/send-logo.png";
    final String gSaveLogo = "lib/assets/services_logo/gsave-logo.png";
    final String loadLogo = "lib/assets/services_logo/load-logo.png";
    final String aPlusRewardsLogo = "lib/assets/services_logo/a-plus-rewards-logo.png";
    final String gCreditLogo = "lib/assets/services_logo/gcredit-logo.png";
    final String billsLogo = "lib/assets/services_logo/bills-logo.png";
    final String gForestLogo = "lib/assets/services_logo/gforest-logo.png";
    final String gLifeLogo = "lib/assets/services_logo/glife-logo.png";
    final String transferLogo = "lib/assets/services_logo/transfer-logo.png";
    final String gInsureLogo = "lib/assets/services_logo/ginsure-logo.png";
    final String gInvestLogo = "lib/assets/services_logo/ginvest-logo.png";

    return Container(
      color: Color(0xffeff8ff),
      padding: EdgeInsets.only(right: 20, left: 20, bottom: 20, top: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // first row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              serviceButtonIcon(cashInLogo, "Cash In"),
              serviceButtonIcon(sendLogo, "Send"),
              serviceButtonIcon(gSaveLogo, "GSave"),
              serviceButtonIcon(loadLogo, "Load"),
            ],
          ),
          SizedBox(height: 30,),
          //second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              serviceButtonIcon(aPlusRewardsLogo, "A+ Rewards"),
              serviceButtonIcon(gCreditLogo, "GCredit"),
              serviceButtonIcon(billsLogo, "Bills"),
              serviceButtonIcon(gForestLogo, "GForest"),
            ],
          ),
          SizedBox(height: 30,),
          //third row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              serviceButtonIcon(gLifeLogo, "GLife"),
              serviceButtonIcon(transferLogo, "Transfer"),
              serviceButtonIcon(gInsureLogo, "GInsure"),
              serviceButtonIcon(gInvestLogo, "GInvest"),
            ],
          ),
        ],
      ),
    );
  }

  Widget serviceButtonIcon(String imageIcon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          alignment: Alignment.center,
          height: 60,
          width: 60,
          child: Image.asset(imageIcon, fit: BoxFit.fill,),
        ),
        SizedBox(height: 2,),
        Text(label, style: TextStyle(color: Color(0xff111099), fontSize: 11),)
      ],
    );
  }
}
