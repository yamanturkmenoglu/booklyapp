import 'package:bookly_app/core/router/app_router.dart';
import 'package:bookly_app/features/feature_splash_view/presentation/widgets/slidings_widgets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreenBody extends StatefulWidget {
  const SplashScreenBody({
    super.key,
  });

  @override
  State<SplashScreenBody> createState() => _SplashScreenBodyState();
}

class _SplashScreenBodyState extends State<SplashScreenBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;

  @override
  void initState() {
    super.initState();

    InitSlidingAnimations();

    navigateToHome();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SlidingWidgets(sliderAnimation: sliderAnimation);
  }

  // ignore: non_constant_identifier_names
  void InitSlidingAnimations() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    sliderAnimation =
        Tween<Offset>(begin: const Offset(0, 20), end: Offset.zero)
            .animate(animationController);

    animationController.forward();
    animationController.addListener(() {
      setState(() {});
    });
  }

  void navigateToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        // Get.to(() => const HomeScreen(),
        //     transition: Transition.fade, duration: kTranstionDuration);
        context.go(AppRouter.kHomeView);
      },
    );
  }
}
