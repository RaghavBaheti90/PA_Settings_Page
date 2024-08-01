import 'package:account_settings/pages/account_page.dart';
import 'package:account_settings/pages/billing_page.dart';
import 'package:account_settings/pages/general_page.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            bottom: TabBar(labelColor: Colors.white, tabs: [
              Tab(
                child: Text(
                  "Account Settings",
                ),
              ),
              Tab(
                child: Text(
                  "General Settings",
                ),
              ),
              Tab(
                child: Text(
                  "Billing",
                ),
              )
            ]),
            backgroundColor: Colors.black,
            title: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 5),
              child: Text(
                "Settings",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w100),
              ),
            ),
          ),
          body: TabBarView(children: [
            account_settings(context),
            General_Page(),
            Billing(),
          ]),
        ));
  }
}
