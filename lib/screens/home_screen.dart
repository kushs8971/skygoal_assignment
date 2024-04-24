import 'package:flutter/material.dart';
import 'package:skygoal_assignment/Constants/app_constants.dart';
import 'package:skygoal_assignment/Screens/apply_screen.dart';
import 'package:skygoal_assignment/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _selectedValue;

  @override
  Widget build(BuildContext context) {

    TextStyle bottomSheetStyle = TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: MediaQuery.of(context).size.height * 0.02);
    double fontSizeLarge = MediaQuery.of(context).size.height * 0.024;
    double fontSizeMMedium = MediaQuery.of(context).size.height * 0.02;
    double fontSizeMedium = MediaQuery.of(context).size.height * 0.016;
    double fontSizesmall = MediaQuery.of(context).size.height * 0.014;
    double iconSizeMedium = MediaQuery.of(context).size.height * 0.03;
    double iconSizeLarge = MediaQuery.of(context).size.height * 0.04;

    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(),
      body: Column(
        children: [
          buildSearchBar(fontSizeLarge, fontSizeMedium, iconSizeMedium, fontSizeMMedium),
          AppConstants.mediumSizedBoxH,
          buildBody(fontSizeLarge, iconSizeLarge, bottomSheetStyle, fontSizesmall, fontSizeMedium)
        ],
      ),
    ));
  }

  Container buildSearchBar(double fontSizeLarge, double fontSizeMedium, double iconSizeMedium, double fontSizeMMedium) {
    return Container(
          padding: const EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
              color: AppConstants.darkBlueColor,
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppConstants.findYourOwnWay,
                          style: TextStyle(
                              fontSize: fontSizeLarge,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        AppConstants.smallSizedBoxH,
                        Text(
                          AppConstants.searchInCollege,
                          style: TextStyle(
                              fontSize: fontSizeMedium, color: Colors.white),
                        ),
                      ],
                    ),
                    Icon(Icons.notifications_active_rounded,
                        color: Colors.white, size: iconSizeMedium),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
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
                          hintStyle: TextStyle(
                            fontSize: fontSizeMMedium,
                          ),
                          prefixIcon: Icon(Icons.search_rounded,
                              color: Colors.grey, size: iconSizeMedium),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Icon(Icons.mic_rounded,
                          color: Colors.grey, size: iconSizeMedium),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
  }
  Expanded buildBody(double fontSizeLarge, double iconSizeLarge, TextStyle bottomSheetStyle, double fontSizesmall, double fontSizeMedium) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        decoration:
        BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: AppConstants.collegeImages.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      margin: const EdgeInsets.only(
                        top: 20,
                        left: 20,
                        right: 20,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppConstants.sortBy,
                                style: TextStyle(
                                    fontSize: fontSizeLarge,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Icon(Icons.close_rounded,
                                    color: Colors.black,
                                    size: iconSizeLarge),
                              ),
                            ],
                          ),
                          AppConstants.smallSizedBoxH,
                          const Divider(),
                          RadioListTile(
                            controlAffinity: ListTileControlAffinity
                                .trailing, // Align radio button to the right
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ApplyScreen()),
                              );
                            },

                            title: Row(
                              children: [
                                Icon(
                                  Icons.catching_pokemon_rounded,
                                  size:
                                  MediaQuery.of(context).size.height *
                                      0.03,
                                ),
                                AppConstants.smallSizedBoxW,
                                Text('Bachelor of Technology',
                                    style: bottomSheetStyle),
                              ],
                            ),
                            value: 'Bachelor of Technology',
                            groupValue: _selectedValue,
                            activeColor: AppConstants.darkBlueColor,
                          ),
                          RadioListTile(
                            controlAffinity: ListTileControlAffinity
                                .trailing, // Align radio button to the right
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ApplyScreen()),
                              );
                            },
                            title: Row(
                              children: [
                                Icon(
                                  Icons.edit_calendar_rounded,
                                  size:
                                  MediaQuery.of(context).size.height *
                                      0.03,
                                ),
                                AppConstants.smallSizedBoxW,
                                Text('Bachelor of Architecture',
                                    style: bottomSheetStyle),
                              ],
                            ),
                            value: 'Bachelor of Architecture',
                            groupValue: _selectedValue,
                            activeColor: AppConstants.darkBlueColor,
                          ),
                          RadioListTile(
                            controlAffinity: ListTileControlAffinity
                                .trailing, // Align radio button to the right
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ApplyScreen()),
                              );
                            },
                            title: Row(
                              children: [
                                Icon(
                                  Icons.local_pharmacy_rounded,
                                  size:
                                  MediaQuery.of(context).size.height *
                                      0.03,
                                ),
                                AppConstants.smallSizedBoxW,
                                Text('Pharmacy', style: bottomSheetStyle),
                              ],
                            ),
                            value: 'Pharmacy',
                            groupValue: _selectedValue,
                            activeColor: AppConstants.darkBlueColor,
                          ),
                          RadioListTile(
                            controlAffinity: ListTileControlAffinity
                                .trailing, // Align radio button to the right
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ApplyScreen()),
                              );
                            },
                            title: Row(
                              children: [
                                Icon(
                                  Icons.gavel_rounded,
                                  size:
                                  MediaQuery.of(context).size.height *
                                      0.03,
                                ),
                                AppConstants.smallSizedBoxW,
                                Text("Law", style: bottomSheetStyle),
                              ],
                            ),
                            value: 'Law',
                            groupValue: _selectedValue,
                            activeColor: AppConstants.darkBlueColor,
                          ),
                          RadioListTile(
                            controlAffinity: ListTileControlAffinity
                                .trailing, // Align radio button to the right
                            onChanged: (value) {
                              setState(() {
                                _selectedValue = value;
                              });
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ApplyScreen()),
                              );
                            },
                            title: Row(
                              children: [
                                Icon(
                                  Icons.manage_accounts_rounded,
                                  size:
                                  MediaQuery.of(context).size.height *
                                      0.03,
                                ),
                                AppConstants.smallSizedBoxW,
                                Text('Management',
                                    style: bottomSheetStyle),
                              ],
                            ),
                            value: 'Management',
                            groupValue: _selectedValue,
                            activeColor: AppConstants.darkBlueColor,
                          ),
                        ],
                      ),
                    );
                  },
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black.withOpacity(
                                0.2), // Adjust opacity as needed
                            BlendMode.srcOver,
                          ),
                          child: Image.asset(
                            AppConstants.collegeImages[index],
                            width: double.maxFinite,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 10,
                        left: 20,
                        child: Text(
                          AppConstants.gridHeadings[
                          index], // Replace this with your desired text
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSizeLarge,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 40,
                        left: 20,
                        child: Text(
                          AppConstants.gridDesc[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSizesmall,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(20),
                                topLeft: Radius.circular(20),
                              ),
                            ),
                            child: Text(
                              AppConstants.gridNumbers[index],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: fontSizeMedium,
                                  fontWeight: FontWeight.bold),
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

}
