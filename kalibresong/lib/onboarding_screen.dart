import 'package:flutter/material.dart';
import 'package:kalibresong/welcome_screen.dart';
class onboarding extends StatefulWidget {
  const onboarding({super.key});

  @override
  State<onboarding> createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  PageController controller = PageController();
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  selected = index;
                });
              },
              children: [
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: height,
                          width: width,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Container(height: height/100*75,
                                margin: EdgeInsets.only(top: height / 100 * 4.5),
                                child: Image.asset(
                                  'assets/splash.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: height,
                          width: width,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Container(height: height/100*75,
                                margin: EdgeInsets.only(top: height / 100 * 4.5),
                                child: Image.asset(
                                  'assets/onboardingb.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: height,
                          width: width,
                          color: Colors.white,
                          child: Stack(
                            children: [
                              Container(height: height/100*75,
                                margin: EdgeInsets.only(top: height / 100 * 4.5),
                                child: Image.asset(
                                  'assets/background.jpg',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: height / 100 *32,
                width: width,
                decoration: BoxDecoration(
                    boxShadow: [
                      //BoxShadow
                      BoxShadow(
                        color: Colors.black12,
                        offset: const Offset(0.0, 0.0),
                        blurRadius: 0.1,
                        spreadRadius: 0.3,
                      ), //BoxShadow
                    ],
                    color: Colors.black,
                    borderRadius:
                    BorderRadius.vertical(top: Radius.circular(59))),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: height / 100 * 4),
                      child: selected == 0
                          ? SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              'Explore Upcoming and \nNearby Events',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: height / 100 * 4,
                            ),
                            Text(
                              'In publishing and graphic design, Lorem is\n a placeholder text commonly',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: height / 100 * 8,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  welcome()));
                                    },
                                    child: Text(
                                      'Skip',
                                      style: TextStyle(
                                          color: Color(0xff7887FF),
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width / 100 * 22,
                                ),
                                Container(
                                  height: height / 100 * 1,
                                  width: width / 100 * 2,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: height / 100 * 1,
                                  width: width / 100 * 2,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    color: Color(0xff7887FF),
                                  ),
                                ),
                                Container(
                                  height: height / 100 * 1,
                                  width: width / 100 * 2,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    color: Color(0xff7887FF),
                                  ),
                                ),
                                SizedBox(
                                  width: width / 100 * 22,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.jumpToPage(1);
                                  },
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                          : selected == 1
                          ? SingleChildScrollView(
                        child: Column(
                          children: [
                            Text(
                              'Web Have Modern Events\nCalender Feature',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                            SizedBox(
                              height: height / 100 * 4,
                            ),
                            Text(
                              'In publishing and graphic design, Lorem is\n a placeholder text commonly',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height: height / 100 * 8,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  welcome()));
                                    },
                                    child: Text(
                                      'Skip',
                                      style: TextStyle(
                                          color: Color(0xff7887FF),
                                          fontSize: 14),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width / 100 * 22,
                                ),
                                Container(
                                  height: height / 100 * 1,
                                  width: width / 100 * 2,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    color: Color(0xff7887FF),
                                  ),
                                ),
                                Container(
                                  height: height / 100 * 1,
                                  width: width / 100 * 2,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    color: Colors.white,
                                  ),
                                ),
                                Container(
                                  height: height / 100 * 1,
                                  width: width / 100 * 2,
                                  decoration: BoxDecoration(
                                    borderRadius:
                                    BorderRadius.circular(20),
                                    color: Color(0xff7887FF),
                                  ),
                                ),
                                SizedBox(
                                  width: width / 100 * 22,
                                ),
                                InkWell(
                                  onTap: () {
                                    controller.jumpToPage(2);
                                  },
                                  child: Text(
                                    'Next',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 14),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                          : selected == 2
                          ? Column(
                        children: [
                          Text(
                            'To Look Up More Events For\nActivities Nearby By Map',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                          SizedBox(
                            height: height / 100 * 4,
                          ),
                          Text(
                            'In publishing and graphic design, Lorem is\n a placeholder text commonly',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                                fontSize: 12),
                          ),
                          SizedBox(
                            height: height / 100 * 8,
                          ),
                          Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                welcome()));
                                  },
                                  child: Text(
                                    'Skip',
                                    style: TextStyle(
                                        color: Color(0xff7887FF),
                                        fontSize: 14),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width / 100 * 22,
                              ),
                              Container(
                                height: height / 100 * 1,
                                width: width / 100 * 2,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(20),
                                  color: Color(0xff7887FF),
                                ),
                              ),
                              Container(
                                height: height / 100 * 1,
                                width: width / 100 * 2,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(20),
                                  color: Color(0xff7887FF),
                                ),
                              ),
                              Container(
                                height: height / 100 * 1,
                                width: width / 100 * 2,
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(20),
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: width / 100 * 22,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              welcome()));
                                },
                                child: Text(
                                  'Next',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                          : SizedBox.shrink(),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
