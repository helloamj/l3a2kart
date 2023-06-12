import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyImageSlider extends StatefulWidget {
  const MyImageSlider({Key? key}) : super(key: key);

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  PageController pageController = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // Container properties
          width: MediaQuery.of(context).size.width - 22 - 31,
          height: MediaQuery.of(context).size.width - 22 - 31 - 101.5 + 4,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  // Container properties
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(3),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 4,
                        offset:
                            const Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width - 22 - 31 - 2.5,
                  height: MediaQuery.of(context).size.width - 22 - 31 - 101.5,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: PageView(
                          controller: pageController,
                          children: [
                            Image.asset(
                              'assets/images/activaImage1.png',
                              fit: BoxFit.fill,
                            ),
                            Image.asset(
                              'assets/images/activaImage1.png',
                              fit: BoxFit.fill,
                            ),
                            Image.asset(
                              'assets/images/activaImage1.png',
                              fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.all(7.53),
                          child: IconButton(
                            onPressed: () {
                              pageController.animateToPage(
                                pageController.page!.toInt() + 1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            icon: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              color: Colors.white,
                              size: 25,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            // Container properties
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(255, 255, 255, 0.75),
                              borderRadius: BorderRadius.circular(23),
                            ),
                            padding: const EdgeInsets.all(5),
                            child: SmoothPageIndicator(
                              onDotClicked: (index) =>
                                  pageController.animateToPage(
                                index,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.ease,
                              ),
                              controller: pageController,
                              count: 3,
                              effect: const WormEffect(
                                activeDotColor: Color(0xff4B48C9),
                                type: WormType.thin,
                                dotWidth: 6,
                                dotHeight: 6,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  // Container properties
                  width: 71,
                  height: 22,
                  decoration: BoxDecoration(
                    color: const Color(0xffF2F2F2),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.circle,
                          color: Color(0xff00BC8E),
                          size: 10,
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Text(
                          'Online',
                          style: Theme.of(context)
                              .primaryTextTheme
                              .bodyLarge!
                              .copyWith(
                                color: const Color(0xff7C7C7C),
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
