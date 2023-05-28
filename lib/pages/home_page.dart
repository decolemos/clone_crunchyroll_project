import 'package:flutter/material.dart';

class HomePageTest extends StatefulWidget {
  const HomePageTest({super.key});

  @override
  State<HomePageTest> createState() => _HomePageTestState();
}

class _HomePageTestState extends State<HomePageTest> with SingleTickerProviderStateMixin {

  late ScrollController _scrollController;
  late bool _isAppBarTransparent = true;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_handleScroll);
  }

  void _handleScroll() {
    setState(() {
      _isAppBarTransparent = _scrollController.offset > kToolbarHeight - 8;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              // _isAppBarTransparent ? null :
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
              leadingWidth: 150,
              expandedHeight: 500,
              floating: true,
              pinned: true,
              snap: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network('https://m.media-amazon.com/images/I/7105KMnMbhL._AC_SL1500_.jpg', fit: BoxFit.cover,),
              ),
              backgroundColor: _isAppBarTransparent ? Colors.black : Colors.transparent,
            )
          ];
        }, 
        body: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('Item $index'),
            );
          }
        )
      ),
    );
  }
}