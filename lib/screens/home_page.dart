import 'dart:convert';

import 'package:blog_project/models/blog_models.dart';
import 'package:blog_project/screens/add_blog.dart';
import 'package:blog_project/widgets/blog_item.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Blog> blogList = [];

  @override
  void initState() {
    super.initState();
    // http paketi ile istek
    fetchBlogs();
  }

  fetchBlogs() async {
    Uri url = Uri.parse("https://tobetoapi.halitkalayci.com/api/Articles");
    final response = await http.get(url);
    final List jsonData = json.decode(response.body);

    setState(() {
      blogList = jsonData.map((json) => Blog.fromJson(json)).toList();
    });
  }
  //   void _navigateToBlogDetail(BuildContext context, int blogId) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => BlogDetailScreen(blogId: blogId),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Blog Listesi"),
          actions: [
            IconButton(
                onPressed: () async {
                  bool? result = await Navigator.of(context)
                      .push(MaterialPageRoute(builder: (builder) => const AddBlog()));

                  if (result == true) {
                    fetchBlogs();
                  }
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: blogList.isEmpty
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
                onRefresh: () async {
                  fetchBlogs();
                },
                child: ListView.builder(
                  itemBuilder: (ctx, index) => BlogItem(blog: blogList[index]),
                  itemCount: blogList.length,
                ),
              ));
  }
}