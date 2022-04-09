import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:todo/model/NewsResponse.dart';
import 'package:todo/model/SourcesRespons.dart';
class ApiManager{
  static const String BaseUrl ='newsapi.org';
  static Future<SourcesRespons> getSources(String categoryId)async{

    var url =Uri.https(BaseUrl, '/v2/top-headlines/sources',
        {'apiKey' :'8f6c454ce41f47998d1f895dd4fbf517',
        'category':categoryId,
        });
    var response =await http.get(url);
    try{
      var bodyString = response.body;
      var json =jsonDecode(bodyString);
      var sourceResponse = SourcesRespons.fromJson(json);
      return sourceResponse;
    }catch(e){
      throw e;
    }
  }
  //https://newsapi.org/v2/everything?apiKey=&sources=wired
  static Future <NewsResponse> getNews(String SourceId)async{
    var url = Uri.https(BaseUrl, '/v2/everything',
        {'apiKey':'8f6c454ce41f47998d1f895dd4fbf517',
          'sources': SourceId,
        });
    var response = await http.get(url);
   try{
     var bodyString = response.body;
     var json =jsonDecode(bodyString);
     var newsResponse = NewsResponse.fromJson(json);
     return newsResponse;
   }catch (e){
     throw e ;
   };
  }
}