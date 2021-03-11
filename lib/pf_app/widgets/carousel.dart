import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:pixelfield_app/pf_app/common/constants.dart';
import 'package:pixelfield_app/pf_app/common/theme.dart';

class CarouselController extends GetxController {
  RxInt _currentIndex = 0.obs;

  get currentIndex => _currentIndex.toInt();

  set currentIndex(int index) {
    _currentIndex.value = index;
    this.update();
  }
}

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CarouselController>(
      init: CarouselController(),
      builder: (CarouselController controller) => Stack(
        children: [
          CarouselSlider(
            options: CarouselOptions(
                height: AppTheme.carouselHeight,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: AppTheme.carouselInterval),
                autoPlayAnimationDuration: Duration(milliseconds: AppTheme.carouselAnimationDuration),
                autoPlayCurve: Curves.fastOutSlowIn,
                onPageChanged: (int index, _) {
                  controller.currentIndex = index;
                }),
            items: carouselImages.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    child: GestureDetector(
                      child: Image.asset(image),
                      onTap: () {
                        print("Clicked to: ${image.split('/').last}");
                      },
                    ),
                  );
                },
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: AppTheme.carouselIndicatorBottomPosition),
            child: CarouselIndicator(
              count: carouselImages.length,
              index: controller.currentIndex,
              width: MediaQuery.of(context).size.width / carouselImages.length,
              cornerRadius: AppTheme.carouselIndicatorCornerRadius,
              space: AppTheme.carouselIndicatorSpace,
            ),
          ),
        ],
      ),
    );
  }
}
