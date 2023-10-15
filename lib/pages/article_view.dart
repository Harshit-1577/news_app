import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ArticleView extends StatefulWidget {
  String blogUrl;
  ArticleView({required this.blogUrl});

  @override
  State<ArticleView> createState() => _ArticleView();
}

class _ArticleView extends State<ArticleView> {
  late final controller = WebViewController()
    ..setJavaScriptMode(JavaScriptMode.disabled)
    ..loadRequest(Uri.parse(widget.blogUrl));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("News"),
          Text(
            "App",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          )
        ]),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: WebViewWidget(controller: controller),
    );
  }
}
