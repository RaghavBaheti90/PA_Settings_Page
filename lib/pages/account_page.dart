import 'package:flutter/material.dart';

Widget account_settings(BuildContext context) {
  return ListView(
    children: [
      Column(
        children: [
          SizedBox(
            height: 30,
          ),
          //-------------------------------- part 1  ----------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "Profile Picture",
                        style: TextStyle(
                            color: Colors.white54,
                            fontWeight: FontWeight.w100,
                            fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.transparent,
                        backgroundImage: NetworkImage(
                            "https://cdn-icons-png.flaticon.com/512/3135/3135715.png")),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  children: [
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      width: MediaQuery.sizeOf(context).width * 0.10,
                      decoration: BoxDecoration(
                          color: Colors.teal.shade500,
                          border: Border.all(color: Colors.white54),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        "Add",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: MediaQuery.sizeOf(context).height * 0.04,
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white54),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        "Remove",
                        style: TextStyle(color: Colors.white54),
                      )),
                    )
                  ],
                ),
              ),
            ],
          ),
          //-------------------------------- part 1  ----------------------------------
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Divider(
              height: 1,
              color: Colors.white,
            ),
          ),
          //-------------------------------part2 ---------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: const Row(
                  children: [
                    Text(
                      "Profile Name",
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.w100,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      "Name123",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: MediaQuery.sizeOf(context).height * 0.04,
                width: MediaQuery.sizeOf(context).width * 0.15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  "Change",
                  style: TextStyle(color: Colors.white54),
                )),
              ),
            ],
          ),
          //-------------------------------part2 ---------------------------------------
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Divider(
              height: 1,
              color: Colors.white,
            ),
          ),
          //-------------------------------part3 ---------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: const Row(
                  children: [
                    Text(
                      "Email id",
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.w100,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 95,
                    ),
                    Text(
                      "Zxxxxxxxxxxxxx@xyz.com",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: MediaQuery.sizeOf(context).height * 0.04,
                width: MediaQuery.sizeOf(context).width * 0.15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  "Change",
                  style: TextStyle(color: Colors.white54),
                )),
              ),
            ],
          ),
          //-------------------------------part3 ---------------------------------------
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Divider(
              height: 1,
              color: Colors.white,
            ),
          ),
          //-------------------------------part4 ---------------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 27),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Text(
                      "You will be using Product as a",
                      style: TextStyle(color: Colors.white54),
                    ),
                    Text(
                      " Content Creator",
                      style: TextStyle(color: Colors.teal.shade500),
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 13),
                  height: MediaQuery.sizeOf(context).height * 0.04,
                  width: MediaQuery.sizeOf(context).width * 0.15,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "Change",
                    style: TextStyle(color: Colors.white54),
                  )),
                ),
              ],
            ),
          ),
          //-------------------------------part4 ---------------------------------------
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Divider(
              height: 1,
              color: Colors.white,
            ),
          ),
          //-------------------------------part5 ---------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: const Row(
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.w100,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 90,
                    ),
                    Text(
                      "************",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: MediaQuery.sizeOf(context).height * 0.04,
                width: MediaQuery.sizeOf(context).width * 0.15,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Text(
                  "Change",
                  style: TextStyle(color: Colors.white54),
                )),
              ),
            ],
          ),
          //-------------------------------part5 ---------------------------------------
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            child: Divider(
              height: 1,
              color: Colors.white,
            ),
          ),
          //-------------------------------part6 ---------------------------------------
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: const Row(
                  children: [
                    Text(
                      "Current Plan",
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.w100,
                          fontSize: 15),
                    ),
                    SizedBox(
                      width: 70,
                    ),
                    Text(
                      "Product AI Free Version",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w100,
                          fontSize: 14),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40),
                height: MediaQuery.sizeOf(context).height * 0.05,
                width: MediaQuery.sizeOf(context).width * 0.15,
                decoration: BoxDecoration(
                    color: Colors.teal.shade500,
                    border: Border.all(color: Colors.white54),
                    borderRadius: BorderRadius.circular(5)),
                child: const Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.arrow_circle_up,
                      color: Colors.white,
                    ),
                    Text(
                      "Upgrade plan",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )),
              ),
            ],
          ),
          //-------------------------------part6 ---------------------------------------
          SizedBox(
            height: 30,
          ),
          //-------------------------------part7 ---------------------------------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.04,
                  width: MediaQuery.sizeOf(context).width * 0.10,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "Cancel",
                    style: TextStyle(color: Colors.white54),
                  )),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: MediaQuery.sizeOf(context).height * 0.04,
                  width: MediaQuery.sizeOf(context).width * 0.15,
                  decoration: BoxDecoration(
                      color: Colors.teal.shade500,
                      border: Border.all(color: Colors.white54),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Center(
                      child: Text(
                    "Save Settings",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
        ],
      )
    ],
  );
}
