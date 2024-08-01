import 'package:flutter/material.dart';

class Billing extends StatefulWidget {
  const Billing({super.key});

  @override
  State<Billing> createState() => _BillingState();
}

class _BillingState extends State<Billing> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),

            //---------------------------------------part 1 -----------------------------------------------
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
                            color: Colors.white54,
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
                        "Upgrade Plan",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
                ),
              ],
            ),
            //---------------------------------------part 1 -----------------------------------------------
            const SizedBox(
              height: 20,
            ),
            //---------------------------------------part 2 -----------------------------------------------
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Monthly Credits Left",
                    style: TextStyle(
                        color: Colors.white54,
                        fontWeight: FontWeight.w100,
                        fontSize: 14),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      "150 of 200",
                      style: TextStyle(
                          color: Colors.white54,
                          fontWeight: FontWeight.w100,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            //---------------------------------------part 2 -----------------------------------------------
            const SizedBox(
              height: 30,
            ),
            //---------------------------------------part 3 -----------------------------------------------
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Row(
                children: [
                  Text(
                    "Plans",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ],
              ),
            ),
            //---------------------------------------part 4 -----------------------------------------------
            _tabble(context),
            //---------------------------------------part 4 -----------------------------------------------

            //---------------------------------------part 5 -----------------------------------------------
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    width: MediaQuery.sizeOf(context).width * 0.20,
                    decoration: BoxDecoration(
                        color: Colors.teal.shade500,
                        border: Border.all(color: Colors.white54),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child: Text(
                      "Upgrade to pro",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Container(
                    height: MediaQuery.sizeOf(context).height * 0.04,
                    width: MediaQuery.sizeOf(context).width * 0.20,
                    decoration: BoxDecoration(
                        color: Colors.teal.shade500,
                        border: Border.all(color: Colors.white54),
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child: Text(
                      "Upgrade to Enterprise",
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

  Widget _tabble(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: const <DataColumn>[
          DataColumn(
            label: Text(
              'Features',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 15),
            ),
          ),
          DataColumn(
            label: Text(
              'Free',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 15),
            ),
          ),
          DataColumn(
            label: Text(
              'Pro',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 15),
            ),
          ),
          DataColumn(
            label: Text(
              'Enterprise',
              style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                  fontSize: 15),
            ),
          ),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'Credits',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                'Limited (200 Monthly)',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                'Unlinited',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                'Unlinited',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'Resolution',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                '360p,720p',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                '1080p',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                '1080p',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'Images',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                'AI Generated',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                'AI Generated, Manual',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                'AI Generated, Manual',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                'Export Formats',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                'PNG',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                'PNG, WEBP',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                'PNG, WEBP, JPEG',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
            ],
          ),
          DataRow(
            cells: <DataCell>[
              DataCell(Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
              DataCell(Text(
                '',
                style: TextStyle(color: Colors.white, fontSize: 15),
              )),
            ],
          ),
        ],
      ),
    );
  }
}
