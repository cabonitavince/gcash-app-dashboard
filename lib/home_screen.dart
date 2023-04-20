import 'package:flutter/material.dart';
import 'package:gcash_home_screen/components/go_cashless_section.dart';
import 'package:gcash_home_screen/components/home_app_bar.dart';
import 'package:gcash_home_screen/components/home_bottom_navigation_bar.dart';
import 'package:gcash_home_screen/components/mega_deals_section.dart';
import 'package:gcash_home_screen/components/services_section.dart';
import 'package:gcash_home_screen/components/you_love_this_section.dart';
import 'package:gcash_home_screen/widgets/scroll_to_hide_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(160), child: HomeAppBar(),),
      body: Scrollbar(
        controller: scrollController,
        child: ListView(
          controller: scrollController,
          children: [
            ServicesSection(),
            MegaDealsSection(),
            YouLoveThisSection(),
            GoCashlessSection(),
          ],
        ),
      ),
      bottomNavigationBar: ScrollToHideWidget(
        scrollController: scrollController,
        duration: Duration(milliseconds: 500),
        child: HomeBottomNavigationBar()),
    );
  }
}
