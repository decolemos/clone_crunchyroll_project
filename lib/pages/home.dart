import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leadingWidth: 150,
            leading: Container(
              margin: const EdgeInsets.only(left: 10),
              child: Image.network('https://i.ibb.co/gyDGZ7q/crunchyroll-logo.png')
            ),
            actions: [
              IconButton(onPressed: () {
                
              }, 
              icon: const Icon(Icons.cast),
              ),
              IconButton(onPressed: () {
                
              }, 
              icon: const Icon(Icons.search))
            ],
            backgroundColor: Colors.black,
            flexibleSpace: FlexibleSpaceBar(
              collapseMode: CollapseMode.parallax,
              background: Image.network('https://m.media-amazon.com/images/I/7105KMnMbhL._AC_SL1500_.jpg',
              fit: BoxFit.cover,
              ),
            ),
            expandedHeight: 400,
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                );
              },
              childCount: 100
            )
          )
        ],
      ),
    );
  }
}