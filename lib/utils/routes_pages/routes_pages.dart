import 'package:get/get.dart';
import 'package:kush_gods/binding/dashboard_binding/dashboard_binding.dart';
import 'package:kush_gods/binding/splash_binding/splash_bindin.dart';
import 'package:kush_gods/utils/routes_pages/pages_name.dart';
import 'package:kush_gods/views/pages/dashboard/dashboard_page.dart';
import 'package:kush_gods/views/pages/editprofile/edit_profile_page.dart';
import 'package:kush_gods/views/pages/giftcards_vouchers/gift_card_page.dart';
import 'package:kush_gods/views/pages/myfavourites/my_favourite_page.dart';
import 'package:kush_gods/views/pages/myorders/my_orders_page.dart';
import 'package:kush_gods/views/pages/news/news_full_view_page.dart';
import 'package:kush_gods/views/pages/news/news_page.dart';
import 'package:kush_gods/views/pages/product/product_full_view_page.dart';
import 'package:kush_gods/views/pages/savedcards/saved_card_page.dart';
import 'package:kush_gods/views/pages/shippin_address/shipping_address_page.dart';
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
        GetPage(
          name: MyPagesName.myOrders,
          page: () => MyOrdersPage(),
        ),
        GetPage(
          name: MyPagesName.myFavourites,
          page: () => MyFavouritePage(),
        ),
        GetPage(
          name: MyPagesName.shippingAddress,
          page: () => ShippingAddressPage(),
        ),
        GetPage(
          name: MyPagesName.savedCards,
          page: () => SavedCardPage(),
        ),
        GetPage(
          name: MyPagesName.giftCards,
          page: () => GiftCardPage(),
        ),
        GetPage(
          name: MyPagesName.dashBoard,
          page: () => DashboardPage(),
        ),
        GetPage(
          name: MyPagesName.editProfile,
          page: () => EditProfilePage(),
        ),
        GetPage(
          name: MyPagesName.newsfullpage,
          page: () => NewsFullView(),
        ),
        GetPage(
          name: MyPagesName.productFullView,
          page: () => ProductFullViewPage(),
        ),
      ];
}
