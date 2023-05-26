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
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        // title: const Text('teste appbar', style: TextStyle(color: Colors.red),),
        backgroundColor: Colors.black,
        elevation: 0,
        title: Row(
          children: [
            SizedBox(
              width: 100,
              child: Image.network('https://i.ibb.co/gyDGZ7q/crunchyroll-logo.png')
            )
          ],
        ),
        // leading: Container(

        //   color: Colors.red,
        //   width: double.infinity,
        //   height: 0,
        //   margin: const EdgeInsets.only(left: 10),
        //   child: Image.network('https://i.ibb.co/gyDGZ7q/crunchyroll-logo.png', fit: BoxFit.contain,)

        // ),
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
        slivers: [
          SliverAppBar(
            leadingWidth: 150,
            expandedHeight: 500,
            floating: true,
            pinned: false,
            backgroundColor: Colors.black,
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