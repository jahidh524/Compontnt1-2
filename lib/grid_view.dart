import 'package:flutter/material.dart';

class GridViewPage extends StatelessWidget {
  const GridViewPage({super.key});

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
     

      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
            icon:  const Icon(Icons.arrow_back),
            onPressed: () {
              // Handle back button press
              Navigator.pop(context);
            },
          ),
          title:  const Text('Grid View Page'),
          ),

          body: GridView.count(crossAxisCount: 3,
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(color: Colors.amber[100],),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(color: Colors.greenAccent,),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(color: Colors.green,),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(color: Colors.teal,),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(color: Colors.red,),
            ),
            
            
            //const AssetImageClass(),
            Image.network('https://www.apple.com/newsroom/images/product/iphone/standard/Apple_iPhone-13-Pro_iPhone-13-Pro-Max_09142021_inline.jpg.large.jpg'),
            Image.network('https://www.mobiledokan.com/wp-content/uploads/2021/10/Apple-iPhone-13-Pro-Max-image.jpg'),
          
          ],
          
          )
          
        

          

        ),
      ),
    );
    
  }
  }

 