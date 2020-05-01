import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:moovio/constants.dart';

class FetchTopBrain {
  var resultList;
  List<String> titleMovie = new List();
  List<String> imageUrl = new List();
  Future<void> fetchPopularMovie() async {
    final response = await http.get(
      kGETPOPULARURL + 'api_key=$kAPIKEY&language=en-US&page=1',
      headers: {"Content-Type": "application/json"},
    );
    //print(response.body);
    resultList = json.decode(response.body)['results'];
    print(resultList[0]);

    for (int i = 0; i < 10; i++) {
      titleMovie.add(resultList[i]['original_title']);
      imageUrl.add(resultList[i]['poster_path']);
    }
    print(titleMovie);
    print(imageUrl);
  }

  String getTitle(int i) {
    return titleMovie[i];
  }

  String getImageUrl(int i) {
    return imageUrl[i];
  }
}
