import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/models/slider_model.dart';

class Slider {
  List<SliderModel> sliders = [];

  Future<void> getSliders() async {
    String url =
        "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=f39ea3c37dd5441d95fa968698c5560f";

    var response = await http.get(Uri.parse(url));

    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == 'ok') {
      jsonData["articles"].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != null) {
          SliderModel sliderModel = SliderModel(
            author: element["author"],
            title: element["title"],
            description: element["description"],
            url: element["url"],
            urlToImage: element["urlToImage"],
          );
          sliders.add(sliderModel);
        }
      });
    }
  }
}
