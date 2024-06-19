// post_api_service.dart
import 'dart:convert';
// import 'package:flutter_api_example/models/post_model.dart';
// import 'package:http/http.dart' as http;

// class PostApiService implements PostRepository {
//   final String baseUrl = 'https://jsonplaceholder.typicode.com';

//   @override
//   Future<List<Post>> fetchPosts() async {
//     final response = await http.get(Uri.parse('$baseUrl/posts'));
//     if (response.statusCode == 200) {
//       List<dynamic> data = jsonDecode(response.body);
//       return data.map((json) => Post.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load posts');
//     }
//   }
// }
