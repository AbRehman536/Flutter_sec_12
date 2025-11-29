import 'package:flutter/material.dart';
import 'package:flutter_sec_12/models/onBoarding.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatefulWidget {
  const PageViewDemo({super.key});

  @override
  State<PageViewDemo> createState() => _PageViewDemoState();
}

class _PageViewDemoState extends State<PageViewDemo> {
  PageController controller = PageController();
  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: "assets/images/Frame.png", title: 'First Page', ),
    OnBoardingModel(image: "assets/images/Frame2.png", title: 'Second Page', ),
    OnBoardingModel(image: "assets/images/Frame3.png", title: 'Third Page', ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: controller,
              itemCount: onBoardingList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(children: [
                  Image.asset(onBoardingList[index].image.toString()),
                  Text(onBoardingList[index].title.toString(),
                  style: TextStyle(fontSize: 30,fontWeight: FontWeight.w700),),

                ],);
              },),
          ),
          SmoothPageIndicator(
              controller: controller,  // PageController
              count:  onBoardingList.length,
              effect:  ExpandingDotsEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          ElevatedButton(onPressed: (){}, child: Text("Get Started")),
        ],
      ),
    );
  }
}
