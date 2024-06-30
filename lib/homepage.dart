import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('layout'),
        backgroundColor: Colors.deepOrangeAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(100),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Discover The Best',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                  Text(
                    'Product',
                    style: TextStyle(
                      fontSize: 40,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 80),
              ),
              Row(
                children: [
                  CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https:imgs.search.brave.com/u6SCrOZly-DcjEc1-2rL3uAod7s6gWjHIAaAQTQSylE/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9pbWd2/My5mb3Rvci5jb20v/aW1hZ2VzL2dhbGxl/cnkvQUktZ2VuZXJh/dGVkLWZhY2Utb2Yt/YS1tYWxlLXNwYWNl/LXdhcnJpb3IuanBn'))
                ],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextField(
                  decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12, width: 1.0),
                ),
                hintText: 'search',
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.tune),
              ))
            ]),
          )
        ]),
      ),
    );
  }
}
