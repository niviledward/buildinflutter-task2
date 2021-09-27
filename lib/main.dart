import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PORTFOLIO',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageStateLess();
  }
}

class HomePageStateLess extends State<HomePage> {
  int flag = 1;

  void setflag() {
    setState(() {
      if (flag == 1) {
        flag = 0;
      } else
        flag = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text("MY PORTFOLIO"),
          elevation: 0,
          backgroundColor: Colors.red,
          toolbarHeight: 55,
        ),
        body: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: 200,
                      width: 900,
                      child: Image.asset(
                        'assets/images/bag.jpg',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 140),
                      alignment: Alignment.center,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/dp.jpg'),
                        radius: 60,
                      ),
                    ),
                  ],
                ),
                Container(
                  
                  child: Text(
                    
                    "Nivil Antony Edward",
                  
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 40),
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("following"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("1")
                        ],
                      ),
                      SizedBox(width: 70),
                      Column(
                        children: [
                          Text("followers"),
                          SizedBox(
                            height: 5,
                          ),
                          Text("10K")
                        ],
                      ),
                    ],
                  ),
                ),
                AnimatedContainer(
                    height: flag == 0 ? 500 : 300,
                    duration: Duration(seconds: 1),
                    decoration: BoxDecoration(boxShadow: [
                      BoxShadow(blurRadius: 5, color: Colors.grey)
                    ], color: Colors.white),
                    width: 330,
                    margin: EdgeInsets.only(top: 40),
                    child: SizedBox(
                        height: 50,
                        width: 300,
                        child: Expanded(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 50, left: 30),
                                    child: Text("E-mail")),
                                Container(
                                    margin: EdgeInsets.only(top: 50, left: 60),
                                    child: Text("niviledward@gmail.com"))
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 50, left: 30),
                                    child: Text("Number")),
                                Container(
                                    margin: EdgeInsets.only(top: 50, left: 60),
                                    child: Text("8281474337"))
                              ],
                            ),
                            Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(top: 50, left: 30),
                                    child: Text("GitHub")),
                                Container(
                                    margin: EdgeInsets.only(top: 50, left: 60),
                                    child: Text("https//Github.io/niviledward/"))
                              ],
                            ),
                           
                            if (flag == 0)
                              Row(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 50, left: 30),
                                      child: Text("College")),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 50, left: 60),
                                      child:
                                          Text("SCMS"))
                                ],
                              ),
                              
                            if (flag == 0)
                              Row(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 50, left: 30),
                                      child: Text("Instagram")),
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 50, left: 60),
                                      child:
                                          Text("@n.i.v.u"))
                                ],
                              ),
                          ],
                        )))),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 120,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(color: Colors.grey, blurRadius: 5),
                  ], color: Colors.red[600]),
                  child: TextButton(
                    onPressed: () {
                      setflag();
                    },
                    child: Text(
                      "More about me",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
