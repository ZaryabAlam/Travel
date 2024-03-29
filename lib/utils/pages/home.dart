import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:ionicons/ionicons.dart';
import '../../data/data.dart';
// import '../../routing/routing.dart';
import '../../Models/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const _padding = 24.0;
  static const _spacing = 10.0;
  List<bool> isSelected = [false, false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              header(),
              const SizedBox(height: 20),
              searchBar(),
              const SizedBox(height: 25),
              categories(),
              const SizedBox(height: 10),
              Center(
                child: ToggleButtons(
                  selectedColor: Colors.white,
                  fillColor: Colors.black87, // Background color when selected
                  textStyle: TextStyle(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                  direction: Axis.horizontal,
                  renderBorder: false,
                  children: <Widget>[
                    buildToggleButton('Flights'),
                    SizedBox(width: 2),
                    buildToggleButton('Hotels'),
                    SizedBox(width: 2),
                    buildToggleButton('Tours')
                  ],
                  isSelected: isSelected,
                  onPressed: (int index) {
                    // Update the selected state
                    setState(() {
                      for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
                        isSelected[buttonIndex] = (buttonIndex == index);
                      }
                    });
                  },
                ),
              ),
              const SizedBox(height: 16),
              const Model(
                padding: _padding,
                spacing: _spacing,
              ),
              const SizedBox(height: 20),
              modelCategories(),
              SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: _padding),
                child: Text(
                  'Discover more',
                  style: TextStyle(
                    color: kSecondaryColor,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CarouselSlider(
                options: CarouselOptions(
                  // height: 200.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                ),
                items: sliderImage.map((imageUrl) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Image.asset(
                          imageUrl,
                          fit: BoxFit.fill,
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              const SizedBox(height: 36),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildToggleButton(String label) {
    return Container(
      height: 50,
      width: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), border: Border.all(color: Colors.black)),
      child: Center(child: Text(label)),
    );
  }

  Widget appBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(
            FontAwesomeIcons.barsStaggered,
            color: kSecondaryColor,
            size: 24,
          ),
          Icon(
            FontAwesomeIcons.bell,
            color: kSecondaryColor,
            size: 24,
          ),
        ],
      ),
    );
  }

  Widget header() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Text(
                //   'Where do',
                //   style: TextStyle(
                //     color: kSecondaryColor.withOpacity(0.6),
                //     fontSize: 22,
                //     fontFamily: 'Montserrat',
                //   ),
                // ),
                // const SizedBox(height: 4),
                const Text('Travel', style: headerTextStyle),
              ],
            ),
          ),
          const CircleAvatar(
            backgroundColor: kAvatarColor,
            radius: 20,
            backgroundImage: AssetImage("assets/images/avatar.png"),
          ),
        ],
      ),
    );
  }

  Widget searchBar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: _padding),
      child: Container(
        height: 46,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28),
          color: kSecondaryColor.withOpacity(0.1),
        ),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: kSecondaryColor.withOpacity(0.6),
              size: 20,
            ),
            const SizedBox(width: 5),
            Text(
              'Discover more',
              style: TextStyle(
                color: kSecondaryColor.withOpacity(0.5),
              ),
            ),
            const Spacer(),
            Icon(
              FontAwesomeIcons.sliders,
              color: kSecondaryColor.withOpacity(0.6),
              size: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget categories() {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: _padding),
          child: Text(
            'Explore Cities',
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: 20,
              fontFamily: 'Montserrat',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: _padding),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    const Text(
                      'All',
                      style: TextStyle(
                        color: kSecondaryColor,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Container(
                      width: 10,
                      height: 3,
                      decoration: const BoxDecoration(
                        // shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 10),
                for (final category in categoryList)
                  Container(
                    margin: const EdgeInsets.only(right: 10),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: kSecondaryColor.withOpacity(0.6),
                        fontSize: 16,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget modelCategories() {
    return SizedBox(
      // color: Colors.red,
      width: double.infinity,
      // height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: _padding),
            child: Text(
              'Categories',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 20,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 18),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              child: Row(
                children: [
                  ...List.generate(
                      data_2.length,
                      (i) => Container(
                            // width: 80,
                            // color: Colors.green,
                            margin: const EdgeInsets.only(left: 35),
                            child: Column(
                              children: [
                                CircleAvatar(
                                  backgroundColor: const Color(0xffeaeaea),
                                  radius: 26,
                                  backgroundImage: AssetImage(data_2[i]["image"]),
                                ),
                                const SizedBox(height: 15),
                                Text(
                                  data_2[i]["name"],
                                  style: TextStyle(
                                    color: kSecondaryColor.withOpacity(0.8),
                                    fontSize: 18,
                                    fontFamily: 'Montserrat',
                                  ),
                                ),
                              ],
                            ),
                          ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
