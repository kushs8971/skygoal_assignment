import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:skygoal_assignment/Constants/app_constants.dart';
import 'package:skygoal_assignment/widgets/apply_button.dart';

class CollegeDescScreen extends StatefulWidget {
  const CollegeDescScreen({Key? key}) : super(key: key);

  @override
  State<CollegeDescScreen> createState() => _CollegeDescScreenState();
}

class _CollegeDescScreenState extends State<CollegeDescScreen> {

  int selectedIndex = -1;
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {

    double fontSizeSmall = MediaQuery.of(context).size.height * 0.02;
    double fontSizeMedium = MediaQuery.of(context).size.height * 0.024;
    double iconSizeMedium = MediaQuery.of(context).size.height * 0.03;
    double iconSizeSmall = MediaQuery.of(context).size.height * 0.02;
    double containerHeightMedium = MediaQuery.of(context).size.height * 0.22;
    double containerHeightXLarge = MediaQuery.of(context).size.height * 0.5;
    double containerHeightSmall = MediaQuery.of(context).size.height * 0.1;
    double containerWidthSmall = MediaQuery.of(context).size.height * 0.1;
    double containerHeightMMedium = MediaQuery.of(context).size.height * 0.2;
    double containerWidthMMedium = MediaQuery.of(context).size.height * 0.02;

    TextStyle tabBarStyle = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: MediaQuery.of(context).size.height * 0.018,
    );

    return SafeArea(
      child: Scaffold(
        bottomSheet: CustomElevatedButton(text: "Apply Now", onPressed: () {  }),
        body: SingleChildScrollView(
          child: Column(
            children: [
              buildTopIconRow(context, iconSizeMedium),
              buildCollegeImage(containerHeightMedium),
              AppConstants.smallSizedBoxH,
              buildCollegeDesc(fontSizeMedium, fontSizeSmall, iconSizeMedium),
              AppConstants.mediumSizedBoxH,
              buildTabBarView(tabBarStyle, containerHeightXLarge, fontSizeSmall, containerHeightMMedium, containerHeightSmall, containerWidthSmall, containerWidthMMedium, iconSizeSmall, iconSizeMedium, context),
            ],
          ),
        ),
      ),
    );
  }

  DefaultTabController buildTabBarView(TextStyle tabBarStyle, double containerHeightXLarge, double fontSizeSmall, double containerHeightMMedium, double containerHeightSmall, double containerWidthSmall, double containerWidthMMedium, double iconSizeSmall, double iconSizeMedium, BuildContext context) {
    return DefaultTabController(
              length: 4,
              child: Column(
                children: [
                  buildTabBar(tabBarStyle),
                  Container(
                    height: containerHeightXLarge,
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Description",
                                  style: TextStyle(
                                    fontSize: fontSizeSmall,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                AppConstants.smallSizedBoxH,
                                Text(
                                  AppConstants.collegeDesc,
                                  style: TextStyle(
                                      fontSize: fontSizeSmall
                                  ),
                                ),
                                AppConstants.mediumSizedBoxH,
                                Text(
                                  "Location",
                                  style: TextStyle(
                                    fontSize: fontSizeSmall,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                AppConstants.smallSizedBoxH,
                                Container(
                                  height: containerHeightMMedium,
                                  width: double.maxFinite,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      image: const DecorationImage(
                                          fit: BoxFit.fitWidth,
                                          image: AssetImage(
                                            "assets/images/location.png",
                                          ))),
                                ),
                                AppConstants.mediumSizedBoxH,
                                Text(
                                  "Student Review",
                                  style: TextStyle(
                                    fontSize:
                                        fontSizeSmall,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                AppConstants.smallSizedBoxH,
                                SingleChildScrollView(
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      Container(
                                        height: containerHeightSmall,
                                        width: containerWidthSmall,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            "assets/images/literallyMe.webp",
                                            fit: BoxFit
                                                .cover,
                                          ),
                                        ),
                                      ),
                                      AppConstants.mediumSizedBoxW,
                                      Container(
                                        height: containerHeightSmall,
                                        width: containerWidthSmall,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            "assets/images/bale.jpg",
                                            fit: BoxFit
                                                .cover,
                                          ),
                                        ),
                                      ),
                                     AppConstants.mediumSizedBoxW,
                                      Container(
                                        height: containerHeightSmall,
                                        width: containerWidthSmall,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            "assets/images/girlfriend.jpg",
                                            fit: BoxFit
                                                .cover,
                                          ),
                                        ),
                                      ),
                                      AppConstants.mediumSizedBoxW,
                                      Container(
                                        height: containerHeightSmall,
                                        width: containerWidthSmall,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          child: Image.asset(
                                            "assets/images/girlfriendTwo.jpg",
                                            fit: BoxFit
                                                .cover,
                                          ),
                                        ),
                                      ),
                                      AppConstants.mediumSizedBoxW,
                                      Container(
                                        height: containerHeightSmall,
                                        width: containerWidthSmall,
                                        decoration: BoxDecoration(
                                          color: AppConstants.lightGreyColor,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(10),
                                          child: Center(
                                            child: Text("+12",
                                            style: TextStyle(
                                              color: AppConstants.darkBlueColor,
                                              fontSize: fontSizeSmall
                                            ),
                                            ),
                                          )
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                AppConstants.mediumSizedBoxH,
                                Text(
                                  "Ryan Gosling",
                                  style: TextStyle(
                                    fontSize: fontSizeSmall,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                AppConstants.smallSizedBoxH,
                                Text(
                                  AppConstants.collegeReview,
                                  style: TextStyle(
                                      fontSize:
                                      fontSizeSmall),
                                ),
                                AppConstants.mediumSizedBoxH,
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/star.png",
                                      width:
                                          containerWidthMMedium,
                                    ),
                                    AppConstants.smallestSizedBoxW,
                                    Image.asset(
                                      "assets/images/star.png",
                                      width:
                                      containerWidthMMedium,
                                    ),
                                    AppConstants.smallestSizedBoxW,
                                    Image.asset(
                                      "assets/images/star.png",
                                      width:
                                      containerWidthMMedium,
                                    ),
                                    AppConstants.smallestSizedBoxW,
                                    Image.asset(
                                      "assets/images/star.png",
                                      width:
                                      containerWidthMMedium,
                                    ),
                                    AppConstants.smallestSizedBoxW,
                                    Image.asset(
                                      "assets/images/halfStar.png",
                                      width:
                                      containerWidthMMedium,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 100,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              AppConstants.largeSizedBoxH,
                              Container(
                                height: 40,
                                child: ListView.builder(
                                  itemCount: 4,
                                  shrinkWrap: true,
                                  physics: const BouncingScrollPhysics(),
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            selectedIndex = index;
                                          });
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20,
                                            vertical: 10,
                                          ),
                                          decoration: BoxDecoration(
                                            border: selectedIndex != index
                                                ? Border.all(
                                                    color: AppConstants.darkBlueColor,
                                                    width: 1)
                                                : Border.all(),
                                            color: selectedIndex == index
                                                ? AppConstants.darkBlueColor
                                                : Colors.white,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.bed_rounded,
                                                color: selectedIndex == index
                                                    ? Colors.white
                                                    : Colors.black,
                                                size: iconSizeSmall
                                              ),
                                              AppConstants.smallSizedBoxW,
                                              Text(
                                                AppConstants.beds[index]
                                                    .toString(),
                                                style: TextStyle(
                                                    color:
                                                        selectedIndex == index
                                                            ? Colors.white
                                                            : Colors.black,
                                                    fontSize:
                                                        fontSizeSmall),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              AppConstants.mediumSizedBoxH,
                              CarouselSlider(
                                items: [
                                  Container(
                                    margin: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(8.0),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/collegeRoomOne.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(8.0),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/collegeRoomTwo.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.all(6.0),
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(8.0),
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/collegeRoomThree.jpg"),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                                options: CarouselOptions(
                                  onPageChanged: (index, reason) {
                                    setState(() {
                                      _currentIndex = index;
                                    });
                                  },
                                  height: 180.0,
                                  enlargeCenterPage: true,
                                  aspectRatio: 16 / 9,
                                  enableInfiniteScroll: true,
                                  autoPlayAnimationDuration:
                                      const Duration(milliseconds: 800),
                                  viewportFraction: 0.8,
                                ),
                              ),
                              DotsIndicator(
                                dotsCount:
                                    AppConstants.collegeRoomImages.length,
                                position: _currentIndex,
                                decorator: DotsDecorator(
                                  color: AppConstants.greyColor,
                                  activeColor: AppConstants.darkBlueColor,
                                  size: const Size.square(8.0),
                                  activeSize: const Size(8.0, 8.0),
                                  activeShape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                              AppConstants.mediumSizedBoxH,
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "GHJK Engineering Hostel",
                                      style: TextStyle(
                                        fontSize: fontSizeSmall,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 5),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: AppConstants.darkGreenColor),
                                      child: Row(
                                        children: [
                                          Text(
                                            "4.3",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize:
                                                    fontSizeSmall),
                                          ),
                                          Icon(
                                            Icons.star_rounded,
                                            color: Colors.white,
                                            size: iconSizeMedium,
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              AppConstants.smallSizedBoxH,
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/pin.png",
                                      width:
                                          iconSizeMedium,
                                    ),
                                    AppConstants.smallSizedBoxW,
                                    Text(
                                      "Jungle vibes, under palm trees, monkeys!",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: fontSizeSmall),
                                    ),
                                  ],
                                ),
                              ),
                              AppConstants.mediumSizedBoxH,
                              Container(
                                  margin: const EdgeInsets.symmetric(horizontal: 20),
                                  child: Text(AppConstants.outroTextCollege,
                                  style: TextStyle(
                                      fontSize: MediaQuery.of(context).size.height * 0.018,
                                    color: AppConstants.greyColor,
                                    fontWeight: FontWeight.bold
                                  ),
                                  )),
                              AppConstants.mediumSizedBoxH,
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20),
                                child: Row( //Wrapped In Row Because Needs To Be Aligned Left
                                  children: [
                                    Text(
                                      "Facilities",
                                      style: TextStyle(
                                        fontSize: fontSizeSmall,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              AppConstants.smallSizedBoxH,
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset("assets/images/building.png",
                                        width: iconSizeMedium,
                                        ),
                                        AppConstants.smallSizedBoxW,
                                        Text("College in 400mtrs",
                                        style: TextStyle(
                                          fontSize: fontSizeSmall
                                        ),
                                        )
                                      ],
                                    ),
                                    AppConstants.smallSizedBoxH,
                                    Row(
                                      children: [
                                        Image.asset("assets/images/bathtubs.png",
                                        width: iconSizeMedium,
                                        ),
                                        AppConstants.smallSizedBoxW,
                                        Text("Bathrooms : 2",
                                        style: TextStyle(
                                            fontSize: fontSizeSmall
                                        ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 80,),
                            ],
                          ),
                        ),
                        Center(child: Text("The land of lost socks.",
                        style: TextStyle(
                          fontSize: fontSizeSmall
                        ),
                        )),
                        Center(child: Text("Tab 4 is hiding from you haha",
                          style: TextStyle(
                              fontSize: fontSizeSmall
                          ),
                        ))
                      ],
                    ),
                  ),
                ],
              ),
            );
  }

  TabBar buildTabBar(TextStyle tabBarStyle) {
    return TabBar(
                    labelStyle: TextStyle(
                      color: AppConstants.darkBlueColor,
                    ),
                    indicatorColor: AppConstants.darkBlueColor,
                    isScrollable: true,
                    tabs: [
                      Text(AppConstants.abtCollege, style: tabBarStyle),
                      Text(AppConstants.hostelFacility, style: tabBarStyle),
                      Text(AppConstants.qAndA, style: tabBarStyle),
                      Text(AppConstants.events, style: tabBarStyle),
                    ],
                  );
  }

  Container buildCollegeDesc(double fontSizeMedium, double fontSizeSmall, double iconSizeMedium) {
    return Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "GHJK Engineering college",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: fontSizeMedium,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        AppConstants.smallSizedBoxH,
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                          style: TextStyle(
                            fontSize: fontSizeSmall
                          ),
                        ),
                      ],
                    ),
                  ),
                  AppConstants.smallSizedBoxH,
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xff27C200),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "4.3",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSizeSmall,
                          ),
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: Colors.white,
                          size: iconSizeMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }

  Container buildCollegeImage(double containerHeightMedium) {
    return Container(
              width: double.maxFinite,
              height: containerHeightMedium,
              child: Image.asset(
                "assets/images/collegeBackground.jpg",
                fit: BoxFit.cover,
              ),
            );
  }

  Container buildTopIconRow(BuildContext context, double iconSizeMedium) {
    return Container(
              padding: const EdgeInsets.only(bottom: 20, top: 20),
              decoration: BoxDecoration(
                color: AppConstants.darkBlueColor,
              ),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: AppConstants.lightBlueColor,
                              size: iconSizeMedium,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Icon(
                            Icons.bookmark_outline_rounded,
                            color: Colors.black,
                            size: iconSizeMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}