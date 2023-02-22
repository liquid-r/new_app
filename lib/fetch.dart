import 'dart:convert';
import 'package:http/http.dart' as http;
import 'model.dart';

class GetNewsArticle {
  Future<List<Article>> getArticle() async {
    final response = await http.get(Uri.parse(
        "https://saurav.tech/NewsAPI/top-headlines/category/health/in.json"));
    // final uri = Uri.https(
    // "https://saurav.tech/NewsAPI/top-headlines/category/health/in.json");
    // final response = await client.get("");
    Map<String, dynamic> json = jsonDecode(response.body);
    List<dynamic> body = json['articles'];
    print("prn data");
    print(json);
    List<Article> articles =
        body.map((dynamic item) => Article.fromJson(item)).toList();
    return articles;
  }
}
