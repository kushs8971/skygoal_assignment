import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:skygoal_assignment/Constants/app_constants.dart';
import 'package:skygoal_assignment/Screens/college_desc_screen.dart';
import 'package:skygoal_assignment/widgets/bottom_nav_bar.dart';

class ApplyScreen extends StatefulWidget {
  const ApplyScreen({super.key});

  @override
  State<ApplyScreen> createState() => _ApplyScreenState();
}

class _ApplyScreenState extends State<ApplyScreen> {
  @override
  Widget build(BuildContext context) {
    double iconSizeMedium = MediaQuery.of(context).size.height * 0.03;
    double fontSizesmall = MediaQuery.of(context).size.height * 0.014;
    double imageHeight = MediaQuery.of(context).size.height * 0.16;
    double fontSizeMMedium = MediaQuery.of(context).size.height * 0.02;
    double fontSizeSSmall = MediaQuery.of(context).size.height * 0.013;
    double imageSizeMedium = MediaQuery.of(context).size.height * 0.04;

    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        children: [
          buildSearchBar(iconSizeMedium),
          AppConstants.mediumSizedBoxH,
          buildMVSHCollege(context, fontSizesmall),
          buildCollegeCards(imageHeight, iconSizeMedium, fontSizeMMedium, fontSizeSSmall, imageSizeMedium),
        ],
      ),
    ));
  }

  Expanded buildCollegeCards(double imageHeight, double iconSizeMedium, double fontSizeMMedium, double fontSizeSSmall, double imageSizeMedium) {
    return Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: 2,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CollegeDescScreen()),
                    );
                  },
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 1000),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 10)
                              ],
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20)),
                                    child: Image.asset(
                                      "assets/images/collegemvsh.jpg",
                                      height: imageHeight,
                                      width: double.maxFinite,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                          child: Icon(Icons.share_rounded,
                                              color: Colors.black,
                                              size: iconSizeMedium),
                                        ),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              color: Colors.white),
                                          child: Icon(
                                              Icons.bookmark_outline_rounded,
                                              color: Colors.black,
                                              size: iconSizeMedium),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 20),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                AppConstants
                                                    .collegeNames[index],
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: fontSizeMMedium,
                                                    // fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "Lorem ipsum dolor sit amet,consectetur adipiscing"
                                                " elit. Eu ut imperdiet sed nec ullamcorper.",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: fontSizeSSmall,
                                                  // fontSize: 20,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                  vertical: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10),
                                                  color: AppConstants
                                                      .darkGreenColor),
                                              child: Row(
                                                children: [
                                                  Text(
                                                    "4.3",
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize:
                                                            fontSizeMMedium),
                                                  ),
                                                  Icon(Icons.star_rounded,
                                                      color: Colors.white,
                                                      size: iconSizeMedium)
                                                ],
                                              ),
                                            ),
                                            AppConstants.smallSizedBoxH,
                                            Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 10,
                                                  vertical: 5),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10),
                                                  color: AppConstants
                                                      .darkBlueColor),
                                              child: Text(
                                                "Apply Now",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize:
                                                        fontSizeMMedium),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    AppConstants.smallSizedBoxH,
                                    Divider(),
                                    AppConstants.smallSizedBoxH,
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Expanded(
                                          child: Row(
                                            children: [
                                              Image.asset(
                                                "assets/images/thumbsUp.png",
                                                width: imageSizeMedium,
                                              ),
                                              Text(
                                                "More than 1000+ students have been placed",
                                                style: TextStyle(
                                                    fontSize: fontSizeSSmall),
                                              )
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.visibility_outlined,
                                              color: Colors.grey,
                                              size: iconSizeMedium,
                                            ),
                                            Text(
                                              "468+",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: fontSizeSSmall),
                                            )
                                          ],
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        );
  }

  SingleChildScrollView buildMVSHCollege(BuildContext context, double fontSizesmall) {
    return SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CollegeDescScreen()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Text(
                      AppConstants.mvshCollege,
                      style: TextStyle(
                          color: Colors.black, fontSize: fontSizesmall),
                    ),
                  ),
                  AppConstants.smallSizedBoxW,
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Text(
                      "MVSH Engineering College",
                      style: TextStyle(
                          color: Colors.black, fontSize: fontSizesmall),
                    ),
                  ),
                  AppConstants.smallSizedBoxW,
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: Text(
                      "MVSH Engineering College",
                      style: TextStyle(
                          color: Colors.black, fontSize: fontSizesmall),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
  }

  Container buildSearchBar(double iconSizeMedium) {
    return Container(
          padding: EdgeInsets.only(bottom: 20, top: 20),
          decoration: BoxDecoration(
              color: AppConstants.darkBlueColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: "Search for colleges, schools...",
                          prefixIcon: Icon(Icons.search_rounded,
                              color: Colors.grey, size: iconSizeMedium),
                        ),
                      ),
                    ),
                    AppConstants.mediumSizedBoxW,
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Icon(
                        Icons.mic_rounded,
                        color: Colors.grey,
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