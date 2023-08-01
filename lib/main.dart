import 'package:flutter_tiktok/pages/homePage.dart';
import 'package:flutter_tiktok/style/style.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:leancloud_storage/leancloud.dart';
void main() {
  /// 自定义报错页面
  if (kReleaseMode) {
    ErrorWidget.builder = (FlutterErrorDetails flutterErrorDetails) {
      debugPrint(flutterErrorDetails.toString());
      return Material(
        child: Center(
            child: Text(
          "发生了没有处理的错误\n请通知开发者",
          textAlign: TextAlign.center,
        )),
      );
    };
  }
  LeanCloud.initialize(
      '{{egMQ9Slas39wLicwoDsKyefZ-gzGzoHsz}}', '{{Ct7JRP1bWhatDtXnEuqM5j4o}}',
      server: 'https://egmq9sla.lc-cn-n1-shared.com',
      queryCache: new LCQueryCache());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Tiktok',
      debugShowCheckedModeBanner:false,
      theme: ThemeData(
        brightness: Brightness.dark,
        hintColor: Colors.white,
        secondaryHeaderColor: Colors.white,
        primaryColor: ColorPlate.orange,
        primaryColorBrightness: Brightness.dark,
        scaffoldBackgroundColor: ColorPlate.back1,
        dialogBackgroundColor: ColorPlate.back2,
        // accentColorBrightness: Brightness.light,
        textTheme: TextTheme(
          bodyText1: StandardTextStyle.normal,
        ),
      ),
      home: HomePage(),
    );
  }
}
