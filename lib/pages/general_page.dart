import 'package:flutter/material.dart';

class General_Page extends StatefulWidget {
  @override
  _General_PageState createState() => _General_PageState();
}

class _General_PageState extends State<General_Page> {
  bool isSwitched = false;
  bool Switched = false;
  String level = "ok";

  String _dropdownValue = 'English';

  var _items = ["English UK", "English US", "Hindi"];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //---------------------------------------part 1 -----------------------------------------------
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                children: [
                  Text(
                    "Email Preference",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ],
              ),
            ), //---------------------------------------part 1 -----------------------------------------------

            //---------------------------------------part 2 -----------------------------------------------
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Updates",
                    style: TextStyle(color: Colors.white54),
                  ),
                  Switch(
                    activeColor: Colors.white,
                    inactiveTrackColor: Colors.transparent,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            //---------------------------------------part 2 -----------------------------------------------
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Divider(
                height: 1,
                color: Colors.white,
              ),
            ),
            //---------------------------------------part 3 -----------------------------------------------
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommendations",
                    style: TextStyle(color: Colors.white54),
                  ),
                  Switch(
                    activeColor: Colors.white,
                    inactiveTrackColor: Colors.transparent,
                    value: Switched,
                    onChanged: (value) {
                      setState(() {
                        Switched = value;
                      });
                    },
                  ),
                ],
              ),
            ),
            //---------------------------------------part 3 -----------------------------------------------
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Divider(
                height: 1,
                color: Colors.white,
              ),
            ),
            //---------------------------------------part 4 -----------------------------------------------
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Language",
                    style: TextStyle(color: Colors.white70, fontSize: 20),
                  ),
                  Container(
                      height: MediaQuery.sizeOf(context).height * 0.05,
                      width: MediaQuery.sizeOf(context).width * 0.15,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(7)),
                      child: Stack(
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(right: 30),
                            child: Center(
                                child: Text(
                              "English UK",
                              style: TextStyle(color: Colors.white),
                            )),
                          ),
                          DropdownButton(
                            underline: SizedBox(),
                            borderRadius: BorderRadius.circular(10),
                            items: _items.map((String item) {
                              return DropdownMenuItem(
                                value: item,
                                child: Text(item),
                              );
                            }).toList(),
                            onChanged: (String? newValue) {
                              setState(() {
                                _dropdownValue = newValue!;
                              });
                            },
                          ),
                        ],
                      ))
                ],
              ),
            ),
            //---------------------------------------part 4 -----------------------------------------------

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Divider(
                height: 1,
                color: Colors.white,
              ),
            ),
            //---------------------------------------part 5 -----------------------------------------------

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text(
                        "Theme",
                        style: TextStyle(color: Colors.white70, fontSize: 20),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Text(
                            "Dark",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Radio(
                              activeColor: Colors.white,
                              value: "1",
                              groupValue: level,
                              onChanged: (value) {
                                setState(() {
                                  level = value.toString();
                                });
                              }),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Light",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Radio(
                              activeColor: Colors.white,
                              value: "2",
                              groupValue: level,
                              onChanged: (value) {
                                setState(() {
                                  level = value.toString();
                                });
                              }),
                        ],
                      ),
                    )
                  ]),
            ),
            //---------------------------------------part 5 -----------------------------------------------
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Divider(
                height: 1,
                color: Colors.white,
              ),
            ),
            //---------------------------------------part 6 -----------------------------------------------
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 25),
                  child: const Row(
                    children: [
                      Text(
                        "Feedback & Suggestion",
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
                      Text(
                        "Feedback Form",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
                ),
              ],
            ),
            //---------------------------------------part 6 -----------------------------------------------
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
}
