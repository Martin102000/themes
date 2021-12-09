import 'package:delevery_diego/theming_state_management/presentation/login_screen.dart';
import 'package:delevery_diego/theming_state_management/presentation/splash_screen.dart';
import 'package:get/route_manager.dart';

routes() => [
      GetPage(
        name: '/splash',
        page: () => const SplashPage(),
        transition: Transition.cupertino,
      ),
      GetPage(
        name: '/login',
        page: () => const LoginPage(),
        transition: Transition.cupertino,
      ),
    ];
