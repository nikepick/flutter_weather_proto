import 'package:alert/alert.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    double c_width = MediaQuery.of(context).size.width * 0.8;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Dramastadt",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
            ),
            Text(
              "Shaniwar",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Image.network(
              "https://cdn2.iconfinder.com/data/icons/weather-flat-14/64/weather03-512.png",
              height: 200,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Center(
                    child: Text(
                      "20°C",
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 50),
                    ),
                  ),
                  flex: 5,
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          child: Text(
                            "DETAILS",
                          ),
                        ),
                      ),
                      Divider(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          width: c_width,
                          child: new Column(
                            children: <Widget>[
                              Text(
                                  "Today: Some long ass detail that has to be here for some reason, I mean I don't why but it has to be, like about day and temperature, I will marry Priyanka <3, and other stuff like that :D. Let's find prateek on tinder"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  flex: 5,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              child: InkWell(
                onTap: () {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => SimpleDialog(
                      children: <Widget>[
                        Center(
                          child: Container(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Dramastadt',
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 30),
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                      child: Text(
                                    "12:00",
                                    textAlign: TextAlign.center,
                                  )),
                                  Expanded(
                                      child: Text(
                                    "20°C",
                                    textAlign: TextAlign.center,
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                      child: Text(
                                    "12:00",
                                    textAlign: TextAlign.center,
                                  )),
                                  Expanded(
                                      child: Text(
                                    "20°C",
                                    textAlign: TextAlign.center,
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                      child: Text(
                                    "12:00",
                                    textAlign: TextAlign.center,
                                  )),
                                  Expanded(
                                      child: Text(
                                    "20°C",
                                    textAlign: TextAlign.center,
                                  )),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Expanded(
                                      child: Text(
                                    "12:00",
                                    textAlign: TextAlign.center,
                                  )),
                                  Expanded(
                                      child: Text(
                                    "20°C",
                                    textAlign: TextAlign.center,
                                  )),
                                ],
                              ),
                            ],
                          )),
                        )
                      ],
                    ),
                  ).then((returnVal) {
                    if (returnVal != null) {}
                  });
                },
                child: Image.network(
                  "https://icon-library.com/images/cloudy-icon/cloudy-icon-15.jpg",
                  height: 50,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.wb_sunny),
            title: Text("Today"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.ac_unit),
            title: Text("Morning"),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
