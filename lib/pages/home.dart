import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {

    Color appBarColor = Colors.transparent;

    _scrollController.addListener(() {
      if(_scrollController.offset >= kToolbarHeight) {
        setState(() {
          appBarColor = Colors.transparent;
        });
      } else {
        setState(() {
          appBarColor = Colors.black;
        });
      }
    });

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: appBarColor,
        elevation: 0,
        title: Row(
          children: [
            SizedBox(
              width: 100,
              child: Image.network('https://i.ibb.co/gyDGZ7q/crunchyroll-logo.png')
            )
          ],
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
      ),
      
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            leadingWidth: 150,
            expandedHeight: 500,
            floating: true,
            pinned: false,
            backgroundColor: appBarColor,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: const SizedBox(
                width: double.infinity,
                // color: Colors.red,
                child: Text('Demon Slayer')
              ),
              collapseMode: CollapseMode.parallax,
              background: Stack(
                children: [ SizedBox(
                  width: double.infinity,
                  child: Image.network('https://m.media-amazon.com/images/I/7105KMnMbhL._AC_SL1500_.jpg',
                    fit: BoxFit.cover,
                    ),
                  ),
                ]
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ListTile(
                  // style: Colo,
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