import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Layout(),
    );
  }
}

class Layout extends StatelessWidget {
  const Layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Row(
              children: [
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 350,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image(image: AssetImage("image/lake.jpg")),
                          Image(image: AssetImage("image/dayat.png")),
                          Image(image: AssetImage("image/cok.jpg")),
                          Image(image: AssetImage("image/bang.jpg")),
                        ],
                      ),
                    ),

                    //se
                    Container(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    'Oeschinen Lake Campground',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Kandersteg, Switzerland',
                                    style: TextStyle(color: Colors.amber[500]),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Icon(Icons.favorite, color: Colors.red[900]),
                          Text('999')
                        ],
                      ),
                    ),
                    // BUTTON
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.call,
                              color: Colors.blue,
                            ),
                            Text('CALL'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.route,
                              color: Colors.blue,
                            ),
                            Text('ROUTE'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.share,
                              color: Colors.blue,
                            ),
                            Text('SHARE'),
                          ],
                        ),
                      ],
                    ),
                    //deskripsi
                    Container(
                      padding: EdgeInsets.all(32),
                      child: Text(
                        'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                        'Alps. Situated 1,578 meters above sea level, it is one of the '
                        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                        'half-hour walk through pastures and pine forest, leads you to the '
                        'lake, which warms to 20 degrees Celsius in the summer. Activities '
                        'enjoyed here include rowing, and riding the summer toboggan run.',
                      ),
                    ),
                  ],
                ))
              ],
            )
          ],
        ));
  }
}
