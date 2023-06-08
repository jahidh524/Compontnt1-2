import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:myapp/form.dart';
import 'package:myapp/gridView.dart';
import 'package:myapp/second.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                toolbarHeight: 80,
                title: const Text(
                  'Appbar',
                  style: TextStyle(fontSize: 30),
                ),
                actions: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.camera),
                    padding: const EdgeInsets.all(30),
                    onPressed: () {},
                  )
                ],
              ),
              drawer: Drawer(
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 70.0,
                      child: DrawerHeader(
                        decoration: BoxDecoration(
                          color: Colors.blue,
                        ),
                        margin: EdgeInsets.all(0.0),
                        child: Text(
                          'Drawer Header',
                          style: TextStyle(
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Card(
                          elevation: 10,
                          child: ListTile(
                            title: Text('Item $index'),
                            onTap: () {
                              // Handle menu item tap here
                              // Example: Navigator.pushNamed(context, '/${menuItems[index]}');
                            },
                          ),
                        );
                      },
                    ),
                    const ListTile(
                      title: Text('Option 1',
                          style: TextStyle(fontSize: 20, color: Colors.green)),
                    ),
                    const ListTile(
                      title: Text('Option 2',
                          style: TextStyle(fontSize: 20, color: Colors.green)),
                    ),
                    const ListTile(
                      title: Text('Option 3',
                          style: TextStyle(fontSize: 20, color: Colors.green)),
                    ),
                    const ListTile(
                      title: Text('Option 4',
                          style: TextStyle(fontSize: 20, color: Colors.green)),
                    ),
                  ],
                ),
              ),
              body: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Container(
                      color: Colors.yellow,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Container 1',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.orange,
                      // height: 100,
                      child: const Center(
                        child: Text(
                          '''There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.''',
                          style: TextStyle(
                            fontSize: 20,

                            //fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 100,
                      child: const Center(
                        child: Text(
                          'Container 3',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'There is no limit of learning!',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      softWrap: true,
                      textDirection: TextDirection.ltr,
                      textScaleFactor: 1.2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        text: '',
                        style:
                            const TextStyle(color: Colors.black, fontSize: 20),
                        children: [
                          TextSpan(
                            text: 'Jahid',
                            style: const TextStyle(
                              color: Colors.green,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Tapped on Jahid');
                              },
                          ),
                          TextSpan(
                            text: ' Hasan',
                            style: const TextStyle(
                              color: Colors.red,
                              fontSize: 24,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Tapped on Hasan');
                              },
                          ),
                          TextSpan(
                            text: ' Jibon',
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Tapped on Jibon');
                              },
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                width: screenWidth / 3,
                                height: screenHeight / 12,
                                color: Colors.red,
                                //height: 50,
                                child: const Center(
                                  child: Text(
                                    'Red',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.green,
                                width: screenWidth / 3,
                                height: screenHeight / 12,
                                child: const Center(
                                  child: Text(
                                    'Green',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        //second box
                        Expanded(
                          child: Container(
                            color: Colors.yellow,
                            width: screenWidth / 3,
                            height: screenHeight / 6,
                            child: const Center(
                              child: Text(
                                'Shape',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            //flex: 5,
                            child: Column(
                          children: [
                            Container(
                              color: Colors.green,
                              width: screenWidth / 3,
                              height: screenHeight / 12,
                              child: const Center(
                                child: Text(
                                  'hello',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: screenWidth / 3,
                              height: screenHeight / 12,
                              color: Colors.red,
                              child: const Center(
                                child: Text(
                                  'This is red',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SecondPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text('Next page'),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => gridView()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text('Grid View'),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => formPage()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          child: const Text('Form Page'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              bottomNavigationBar: BottomNavigationBar(
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.search),
                    label: 'Search',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: 'Profile',
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
