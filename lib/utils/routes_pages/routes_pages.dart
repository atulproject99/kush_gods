import 'package:get/get.dart';
import 'package:kush_gods/binding/dashboard_binding/dashboard_binding.dart';
import 'package:kush_gods/binding/splash_binding/splash_bindin.dart';
import 'package:kush_gods/utils/routes_pages/pages_name.dart';
import 'package:kush_gods/views/pages/dashboard/dashboard_page.dart';
import 'package:kush_gods/views/pages/splashpage/splash_page.dart';

class MyPages {
  static List<GetPage> get list => [
        GetPage(
            name: MyPagesName.splashFile,
            page: () => SplashPage(),
            binding: SplashBinding()),
        GetPage(
            name: MyPagesName.dashBoard,
            page: () => DashboardPage(),
            binding: DashboardBinding()),
      ];
}
