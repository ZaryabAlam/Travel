// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travelapp/views/search/components/custom_tabs.dart';
import 'package:travelapp/views/search/components/flight_tab.dart';
import 'package:travelapp/data/data.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            children: [
              // Header -----------------------------------
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Search',
                    style: headerTextStyle,
                  ),
                  Spacer(),
                  IconButton(onPressed: () {}, icon: Icon(Icons.headphones, color: kmainDarkColor)),
                  IconButton(onPressed: () {}, icon: Icon(Icons.account_circle_outlined, color: kmainDarkColor)),
                ],
              ),

              const SizedBox(height: 20.0),

              // Background Grade Container ----------------------
              Stack(
                children: [
                  Container(
                    height: 340,
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 12.0),
                    decoration: BoxDecoration(
                      borderRadius: borderRadiusHigh,
                      gradient: LinearGradient(colors: [kGradeColor, kmainColor]),
                    ),
                    child: Text(
                      'Travel Bookings Made Easy',
                      style: headingTextStyle1,
                    ),
                  ),

                  // Form Card ----------------------

                  Container(
                    padding: EdgeInsets.all(12.0),
                    margin: EdgeInsets.fromLTRB(15.0, 50, 15.0, 0),
                    height: 450,
                    width: double.infinity,
                    decoration: BoxDecoration(borderRadius: borderRadiusHigh, color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Color(0xFFCBC9C9),
                        blurRadius: 9.6,
                        spreadRadius: 0.2,
                        offset: Offset(2, 4),
                      ),
                    ]),
                    child: DefaultTabController(
                      length: 3,
                      child: Column(
                        children: [
                          TabBar(
                              labelColor: kmainDarkColor,
                              indicatorColor: kmainDarkColor,
                              unselectedLabelColor: Colors.grey,
                              indicatorWeight: 2.5,
                              indicatorPadding: EdgeInsets.symmetric(horizontal: 20.0),
                              labelPadding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                              tabs: [
                                CustomTabButton(
                                  name: 'Flights',
                                  icon: Icons.flight_takeoff,
                                ),
                                CustomTabButton(
                                  name: 'Hotels',
                                  icon: Icons.hotel,
                                ),
                                CustomTabButton(
                                  name: 'Tours',
                                  icon: Icons.language_outlined,
                                ),
                              ]),
                          SizedBox(
                            height: 380,
                            // width: 200.0,
                            child: TabBarView(children: [
                              FlightTab(),
                              FlightTab(),
                              FlightTab(),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
