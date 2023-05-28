import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ReposWebView extends StatefulWidget{
  @override
  State<ReposWebView> createState() => _ReposWebViewState();
}

class _ReposWebViewState extends State<ReposWebView> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {

    final routeSettings = ModalRoute.of(context)?.settings;
    final repoUrl = routeSettings?.arguments as String?;
    // TODO: implement build
    // throw UnimplementedError();

    return WebView(
      initialUrl: repoUrl,
    );
  }
}