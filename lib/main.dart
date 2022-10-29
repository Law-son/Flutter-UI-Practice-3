// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;
  bool _isSelected4 = false;
  bool _isSelected5 = false;
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.chevron_left,
          color: Color.fromARGB(255, 27, 51, 99),
        ),
        title: const Text(
          'Sports Helmet',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 27, 51, 99),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: const [
          Icon(Icons.shopping_bag_outlined,
              color: Color.fromARGB(255, 27, 51, 99), size: 25),
          SizedBox(
            height: 25,
            width: 25,
          )
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.amber,
                ),
                width: 60,
                height: 25,
                child: const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    'SALE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              trailing: GestureDetector(
                onTap: () {
                      setState(() {
                        _isLiked = !_isLiked;
                      });
                    },
                child: Icon(
                  Icons.favorite,
                  color: _isLiked ?Colors.red : Colors.grey,
                  size: 27,
                ),
              ),
            ),
            Stack(
              children: [Container(
                height: 250,
                width: 350,
                color: Colors.transparent,
                child: const WebView(
                debuggingEnabled: false,
                backgroundColor: Colors.transparent,
                initialUrl: 'https://app.vectary.com/p/69twDDFgHb0cy089uDlet2',
                javascriptMode: JavascriptMode.unrestricted,
              ),
              ),
              Positioned(
                top: 226,
                child: Container(
                  width: 350,
                  color: Colors.transparent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('360   ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                      ),
                      Icon(Icons.pinch,
                      color: Colors.black,
                      size: 20,)
                    ],
                  ),
                )
                )
              ]
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 5, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    child: Text(
                      'Sports Helmet',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 27, 51, 99),
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.star_rounded,
                          color: Colors.amber,
                          size: 30,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: Colors.amber,
                          size: 30,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: Colors.amber,
                          size: 30,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: Colors.amber,
                          size: 30,
                        ),
                        Icon(
                          Icons.star_rounded,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Text(
                  'Strong and durable sports helmet in all colors and sizes. Protect yourself as you engage in sporting activities.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey[700],
                  ),
                )
              ),
            const ListTile(
              title: Text(
                'Size',
                style: TextStyle(
                    color: Color.fromARGB(255, 27, 51, 99),
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 5),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected1 = !_isSelected1;
                        _isSelected2 = false;
                        _isSelected3 = false;
                        _isSelected4 = false;
                        _isSelected5 = false;
                      });
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      decoration: BoxDecoration(
                          color: _isSelected1
                              ? const Color.fromARGB(255, 27, 51, 99)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: const Color.fromARGB(255, 27, 51, 99),
                              width: 1.5,
                              style: BorderStyle.solid)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          '5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: _isSelected1
                                  ? Colors.amber
                                  : const Color.fromARGB(255, 27, 51, 99),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected1 = false;
                        _isSelected2 = !_isSelected2;
                        _isSelected3 = false;
                        _isSelected4 = false;
                        _isSelected5 = false;
                      });
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      decoration: BoxDecoration(
                          color: _isSelected2
                              ? const Color.fromARGB(255, 27, 51, 99)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: const Color.fromARGB(255, 27, 51, 99),
                              width: 1.5,
                              style: BorderStyle.solid)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          '5.5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: _isSelected2
                                  ? Colors.amber
                                  : const Color.fromARGB(255, 27, 51, 99),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected1 = false;
                        _isSelected2 = false;
                        _isSelected3 = !_isSelected3;
                        _isSelected4 = false;
                        _isSelected5 = false;
                      });
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      decoration: BoxDecoration(
                          color: _isSelected3
                              ? const Color.fromARGB(255, 27, 51, 99)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: const Color.fromARGB(255, 27, 51, 99),
                              width: 1.5,
                              style: BorderStyle.solid)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          '6',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: _isSelected3
                                  ? Colors.amber
                                  : const Color.fromARGB(255, 27, 51, 99),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected1 = false;
                        _isSelected2 = false;
                        _isSelected3 = false;
                        _isSelected4 = !_isSelected4;
                        _isSelected5 = false;
                      });
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      decoration: BoxDecoration(
                          color: _isSelected4
                              ? const Color.fromARGB(255, 27, 51, 99)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: const Color.fromARGB(255, 27, 51, 99),
                              width: 1.5,
                              style: BorderStyle.solid)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          '6.5',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: _isSelected4
                                  ? Colors.amber
                                  : const Color.fromARGB(255, 27, 51, 99),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        _isSelected1 = false;
                        _isSelected2 = false;
                        _isSelected3 = false;
                        _isSelected4 = false;
                        _isSelected5 = !_isSelected5;
                      });
                    },
                    child: Container(
                      width: 55,
                      height: 55,
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      decoration: BoxDecoration(
                          color: _isSelected5
                              ? const Color.fromARGB(255, 27, 51, 99)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                              color: const Color.fromARGB(255, 27, 51, 99),
                              width: 1.5,
                              style: BorderStyle.solid)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 15),
                        child: Text(
                          '7',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: _isSelected5
                                  ? Colors.amber
                                  : const Color.fromARGB(255, 27, 51, 99),
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 350,
              height: 60,
              decoration: BoxDecoration(
                color:  const Color.fromARGB(255, 223, 231, 248),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 0, 50, 0),
                    child: const Text('Reviews 95',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color:Color.fromARGB(255, 27, 51, 99),
                    ),
                    ),
                  ),
                  Stack(
                    children: <Widget>[
                      Container(
                    margin: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                    width: 150,
                  ),
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: const CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 25,
                          child: CircleAvatar(
                            radius: 23,
                            backgroundImage: NetworkImage('https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250'),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 30,
                        top: 5,
                        child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: CircleAvatar(
                          radius: 23,
                          backgroundImage: NetworkImage('https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250'),
                        ),
                      )
                      ),
                      const Positioned(
                        left: 60,
                        top: 5,
                        child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: CircleAvatar(
                          radius: 23,
                          backgroundImage: NetworkImage('https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250'),
                        ),
                      )
                      ),
                      const Positioned(
                        left: 90,
                        top: 5,
                        child: CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: CircleAvatar(
                          radius: 23,
                          backgroundImage: NetworkImage('https://www.gravatar.com/avatar/2c7d99fe281ecd3bcd65ab915bac6dd5?s=250'),
                        ),
                      )
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: 350,
              margin: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:  [
                    const Text('Ghc100',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 27, 51, 99),
                    ),
                    ),
                    SizedBox(
                      width: 200,
                      height: 55,
                      child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    backgroundColor:
                                        const Color.fromARGB(255, 27, 51, 99),
                                  ),
                                  onPressed: () {},
                                  child: const Text('Add To Cart',
                                  style: TextStyle(
                                        color: Colors.amber,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        fontStyle: FontStyle.normal),
                                  )),
                    )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
