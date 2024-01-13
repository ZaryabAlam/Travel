import 'package:flutter/material.dart';
import 'package:travelapp/utils/custom_textfield.dart';
import 'package:travelapp/data/data.dart';

class FlightTab extends StatefulWidget {
  const FlightTab({super.key});

  @override
  State<FlightTab> createState() => _FlightTabState();
}

class _FlightTabState extends State<FlightTab> {
  var flightRoute = ['One Way', 'Return'];
  var selectedRouteIndex = 0;
  TextEditingController fromFlight = TextEditingController();
  TextEditingController toFlight = TextEditingController();
  TextEditingController departing = TextEditingController();
  TextEditingController flightType = TextEditingController();

  onPressFlightRoute(index) {
    setState(() {
      selectedRouteIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        // Route Widget ---------------------------
        Row(
          children: List.generate(flightRoute.length, (index) {
            var item = flightRoute[index];
            return GestureDetector(
              onTap: () {
                onPressFlightRoute(index);
              },
              child: Container(
                margin: EdgeInsets.only(right: 8.0, top: 12.0),
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
                decoration: BoxDecoration(
                  color: selectedRouteIndex == index ? kmainColor.withOpacity(0.1) : Colors.grey[100],
                  border: Border.all(width: 1.8, color: selectedRouteIndex == index ? kmainDarkColor : Colors.grey),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  item,
                  style: TextStyle(fontSize: 13.0, color: selectedRouteIndex == index ? kmainDarkColor : Colors.grey),
                ),
              ),
            );
          }),
        ),
        const SizedBox(height: 15.0),

        // FORMS FIELDS --------------------------
        // from -----
        CustomTextField(
          textEditingController: fromFlight,
          labelText: 'Flying From (City or Airport)',
          icon: Icon(
            Icons.pin_drop_rounded,
            color: kmainDarkColor,
            size: 22.0,
          ),
        ),

        const SizedBox(height: 15.0),
        // to -----
        CustomTextField(
          textEditingController: toFlight,
          labelText: 'Flying To (City or Airport)',
          icon: Icon(
            Icons.pin_drop_rounded,
            color: kmainDarkColor,
            size: 22.0,
          ),
        ),

        const SizedBox(height: 15.0),
        // Departing -----
        CustomTextField(
          textEditingController: departing,
          labelText: 'Departing',
          icon: Icon(
            Icons.calendar_today,
            color: kmainDarkColor,
            size: 22.0,
          ),
        ),

        const SizedBox(height: 15.0),
        // Flight Type -----
        CustomTextField(
          textEditingController: flightType,
          labelText: '1 Travelers, Economy',
          icon: Icon(
            Icons.luggage_rounded,
            color: kmainDarkColor,
            size: 22.0,
          ),
        ),

        const SizedBox(height: 25.0),

// Search Button --------------------
        SizedBox(
          height: 45.0,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kmainDarkColor,
              ),
              onPressed: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.search, size: 22.0),
                  const SizedBox(width: 20.0),
                  Text(
                    'Search Flight',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w700),
                  ),
                ],
              )),
        ),
      ],
    );
  }
}
