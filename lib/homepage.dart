import 'package:flutter/material.dart';
import 'package:garden_plant/paralx_background.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//@Rogann_he on Instagram
//@CoderBine on Github

class _HomePageState extends State<HomePage> {
  double topEleven = 0;
  double topTen = 0;
  double topNine = 0;
  double topEight = 0;
  double topSeven = 0;
  double topSix = 0;
  double topFive = 0;
  double topFour = 0;
  double topThree = 0;
  double topTwo = 0;
  double topOne = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff372D3B),
      body: NotificationListener(
          onNotification: (notification) {
            if (notification is ScrollUpdateNotification) {
              if (notification.scrollDelta == null) return true;
              setState(() {
                topEleven -= notification.scrollDelta! / 2.0;
                topTen -= notification.scrollDelta! / 1.9;
                topNine -= notification.scrollDelta! / 1.8;
                topEight -= notification.scrollDelta! / 1.7;
                topSeven -= notification.scrollDelta! / 1.6;
                topSix -= notification.scrollDelta! / 1.5;
                topFive -= notification.scrollDelta! / 1.4;
                topFour -= notification.scrollDelta! / 1.3;
                topThree -= notification.scrollDelta! / 1.2;
                topTwo -= notification.scrollDelta! / 1.2;
                topOne -= notification.scrollDelta! / 1;
              });
            }
            return true;
          },
          child: Stack(
            children: [
              ParalaxBackground(
                top: topEleven,
                asset: ("assets/top-paralax-11.png"),
              ),
              ParalaxBackground(
                top: topTen,
                asset: ("assets/top-paralax-10.png"),
              ),
              ParalaxBackground(
                top: topNine,
                asset: ("assets/top-paralax-9.png"),
              ),
              ParalaxBackground(
                top: topEight,
                asset: ("assets/top-paralax-8.png"),
              ),
              ParalaxBackground(
                top: topSeven,
                asset: ("assets/top-paralax-7.png"),
              ),
              ParalaxBackground(
                top: topSix,
                asset: ("assets/top-paralax-6.png"),
              ),
              ParalaxBackground(
                top: topSix,
                asset: ("assets/top-paralax-5.png"),
              ),
              ParalaxBackground(
                top: topFive,
                asset: ("assets/top-paralax-4.png"),
              ),
              ParalaxBackground(
                top: topThree,
                asset: ("assets/top-paralax-3.png"),
              ),
              ParalaxBackground(
                top: topTwo,
                asset: ("assets/top-paralax-2.png"),
              ),
              ParalaxBackground(
                top: topOne,
                asset: ("assets/top-paralax-1.png"),
              ),
              SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 350,
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      color: const Color(0xff372D3B),
                      alignment: Alignment.center,
                      child: Text("Garden Relax",
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(color: Colors.white)),
                    )
                  ],
                ),
              )
            ],
          )),
    );
  }
}
