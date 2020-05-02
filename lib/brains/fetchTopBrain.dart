import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:moovio/constants.dart';

class FetchTopBrain {
  var resultList;
  var resultList2;
  var resultList3;
  var resultList4;
  var resLink;
  var youtubelink = List();
  http.Response responseLink;
  List<String> titleMovie = new List();
  List<String> imageUrl = new List();
  List<String> idMovie = new List();
  List<String> resultLink = new List();
  List<String> desc = new List();
  Future<void> fetchPopularMovie() async {
    final response1 = await http.get(
      kGETPOPULARURL + 'api_key=$kAPIKEY&language=en-US&page=1',
      headers: {"Content-Type": "application/json"},
    );
    final response2 = await http.get(
      kGETPOPULARURL + 'api_key=$kAPIKEY&language=en-US&page=2',
      headers: {"Content-Type": "application/json"},
    );
    final response3 = await http.get(
      kGETPOPULARURL + 'api_key=$kAPIKEY&language=en-US&page=3',
      headers: {"Content-Type": "application/json"},
    );
    final response4 = await http.get(
      kGETPOPULARURL + 'api_key=$kAPIKEY&language=en-US&page=4',
      headers: {"Content-Type": "application/json"},
    );
    //print(response.body);
    resultList = json.decode(response1.body)['results'];
    resultList2 = json.decode(response2.body)['results'];
    resultList3 = json.decode(response3.body)['results'];
    resultList4 = json.decode(response4.body)['results'];

    print(resultList[0]);

    for (int i = 0; i < 20; i++) {
      titleMovie.add(resultList[i]['original_title']);
      imageUrl.add(resultList[i]['poster_path']);
      idMovie.add(resultList[i]['id'].toString());
      desc.add(resultList[i]['overview']);
    }
    for (int i = 0; i < 20; i++) {
      titleMovie.add(resultList2[i]['original_title']);
      imageUrl.add(resultList2[i]['poster_path']);
      idMovie.add(resultList2[i]['id'].toString());
      desc.add(resultList2[i]['overview']);
    }

    for (int i = 0; i < 20; i++) {
      titleMovie.add(resultList3[i]['original_title']);
      imageUrl.add(resultList3[i]['poster_path']);
      idMovie.add(resultList3[i]['id'].toString());
      desc.add(resultList3[i]['overview']);
    }
    for (int i = 0; i < 20; i++) {
      titleMovie.add(resultList4[i]['original_title']);
      imageUrl.add(resultList4[i]['poster_path']);
      idMovie.add(resultList4[i]['id'].toString());
      desc.add(resultList4[i]['overview']);
    }
    //print(titleMovie);
    //print(imageUrl);
    print(idMovie.length);
  }

  String getdesc(int i) {
    return desc[i];
  }

  String getTitle(int i) {
    return titleMovie[i];
  }

  String getImageUrl(int i) {
    return imageUrl[i];
  }

  String getId(int i) {
    return idMovie[i];
  }

  String getYoutubeLink(int i) {
    return youtubelink[i];
  }

  Future fetchYoutubeLinks(int i) async {
    try {
      responseLink = await http.get(
        'http://api.themoviedb.org/3/movie/${idMovie[i]}/videos?api_key=8ceab0d4ef0a70c1187207197a12621e&language=en-US',
        headers: {"Content-Type": "application/json"},
      );
      resLink = (jsonDecode(responseLink.body)['results']);
      //resultLink.add(resLink[0]['key'].toString());
      youtubelink.add(resLink[0]['key'].toString());
      print('added');
    } catch (e) {
      youtubelink.add('2U76x2fD_tE');
      print('added default ');
      //print('not found $e');
    }
  }

  static String s;
  Future getLinkWithId(String id) async {
    try {
      responseLink = await http.get(
        'http://api.themoviedb.org/3/movie/${id}/videos?api_key=8ceab0d4ef0a70c1187207197a12621e&language=en-US',
        headers: {"Content-Type": "application/json"},
      );
      resLink = (jsonDecode(responseLink.body)['results']);
      //resultLink.add(resLink[0]['key'].toString());
      s = resLink[0]['key'].toString();
    } catch (e) {
      s = '2U76x2fD_tE';

      //print('not found $e');
    }
  }
}
