import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:kush_gods/contollers/news_controller/new_full_view_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class NewsFullView extends StatefulWidget {
  @override
  _NewsFullViewState createState() => _NewsFullViewState();
}

final controller = Get.put(NewsFullViewController());

class _NewsFullViewState extends State<NewsFullView> {
  late WebViewController _controller;
  bool isLoading = true;

  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  @override
  void initState() {
    super.initState();
    print(
        "https://emergenceinfotech.in/Kush/API/newsurl.php? news_id=${Get.arguments[0]} & type=${Get.arguments[1]}");
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /* appBar: AppBar(
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
              )),
          centerTitle: true,
          title: Text(
            Get.arguments["newstitle"],
            style: TextStyle(fontSize: 16),
          ),
        ), */
        body: SafeArea(
      child: Stack(children: [
        WillPopScope(
          onWillPop: () => _goBack(context),
          child: WebView(
            initialUrl:
                "https://emergenceinfotech.in/Kush/API/newsurl.php? news_id=${Get.arguments[0]} && type=${Get.arguments[1]}",
            javascriptMode: JavascriptMode.unrestricted,
            onWebViewCreated: (WebViewController webViewController) {
              _controllerCompleter.future.then((value) => _controller = value);
              _controllerCompleter.complete(webViewController);
            },
            onPageFinished: (finish) {
              setState(() {
                isLoading = false;
              });
            },
          ),
        ),
        isLoading
            ? Center(
                child: SpinKitFadingCircle(
                  color: Colors.black,
                ),
              )
            : Stack(),
      ]),
    ));
  }

  Future<bool> _goBack(BuildContext context) async {
    if (await _controller.canGoBack()) {
      _controller.goBack();
      return Future.value(false);
    } else {
      Get.back();
      return Future.value(true);
    }
  }
}
