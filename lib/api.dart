import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PostMan extends StatefulWidget {
  const PostMan({super.key});

  @override
  State<PostMan> createState() => _PostManState();
}

class _PostManState extends State<PostMan> {
  //@override
  List<dynamic> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("API call"),
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: (context, index) {
          final user = users[index];
          final title = user['title'];

          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(title),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUsers,
      ),
    );
  }

  void fetchUsers() async {
    String title = '';
    //print("Fetch users called");

    final dio = Dio();
   final response = await dio.get('https://jsonplaceholder.typicode.com/posts/1');
  //final response = await dio.get('https://pub.dev/packages/dio');
  //print(response.data['title']);

     setState(() {
       //users = response.data['userId'];
       title = response.data['title'];

     });
     
  }
}
