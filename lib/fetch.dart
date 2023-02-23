import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model.dart';

class GetNewsArticle {
  Future<List<Article>> getArticle() async {
    final response = await http.get(Uri.parse(
        "https://saurav.tech/NewsAPI/top-headlines/category/health/in.json"));
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    print("prnt data");
    print(json);
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    print('print data');
    print(articles);
    return articles;
  }
}
