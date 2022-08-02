import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);
  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  final introKey = GlobalKey<IntroductionScreenState>();
  final pagesInfo = [
    {
      'title': 'Example Title 1',
      'description':
          'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'image':
          'https://cdn4.iconfinder.com/data/icons/onboarding-material-color/128/__23-512.png',
    },
    {
      'title': 'Example Title 2',
      'description':
          'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'image':
          'https://cdn4.iconfinder.com/data/icons/onboarding-material-color/128/__20-512.png',
    },
    {
      'title': 'Example Title 3',
      'description':
          'lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
      'image':
          'https://cdn4.iconfinder.com/data/icons/onboarding-material-color/128/__14-512.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      imageFlex: 1,
      titlePadding: EdgeInsets.all(32),
      bodyFlex: 9,
      imagePadding: EdgeInsets.zero,
      bodyPadding: EdgeInsets.only(top: 0, left: 32, right: 32, bottom: 0),
      pageColor: Colors.transparent,
      contentMargin: EdgeInsets.all(0),
      fullScreen: true,
    );

    return Scaffold(
      body: IntroductionScreen(
        key: introKey,
        globalBackgroundColor: Theme.of(context).scaffoldBackgroundColor,
        pages: pagesInfo.map((pageInfo) {
          return PageViewModel(
            titleWidget: Image.network(
              pageInfo['image'].toString(),
              height: 50.h,
            ),
            bodyWidget: Column(
              children: [
                Text(
                  pageInfo['title'].toString(),
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20),
                Text(
                  pageInfo['description'].toString(),
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: 20),
              ],
            ),
            decoration: pageDecoration,
          );
        }).toList(),
        onDone: () => {
          context.go('/'),
        },
        onSkip: () => {
          context.go('/'),
        },
        showSkipButton: true,
        skipOrBackFlex: 1,
        nextFlex: 1,
        showBackButton: false,
        dotsFlex: 3,
        back: const Icon(Icons.arrow_back),
        skip: Text(
          'Skip',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        next: Icon(
          Icons.arrow_forward,
          color: Theme.of(context).colorScheme.primary,
        ),
        done: Text(
          'Done',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 12.sp,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        curve: Curves.fastLinearToSlowEaseIn,
        controlsMargin: const EdgeInsets.all(16),
        dotsDecorator: DotsDecorator(
          activeColor: Theme.of(context).colorScheme.primary,
        ),
        controlsPadding: kIsWeb
            ? const EdgeInsets.all(12.0)
            : const EdgeInsets.fromLTRB(4.0, 2.0, 4.0, 2.0),
        dotsContainerDecorator: const ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(1),
            ),
          ),
        ),
      ),
    );
  }
}
