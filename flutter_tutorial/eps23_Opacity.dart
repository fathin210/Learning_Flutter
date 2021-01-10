import 'package:flutter/material.dart';

class Eps23 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: customCard(),
    );
  }
}

class customCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Membuat Custom Card'),
        backgroundColor: Colors.red,
      ),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.7,
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.kantar.com/-/media/project/kantar/global/campaigns/brandz/indonesia.jpg'),
                      fit: BoxFit.cover)),
            ),
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.7,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.1,
                      child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/pattern.png'),
                                fit: BoxFit.fill)),
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10)),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      'https://lp-cms-production.imgix.net/news/2017/06/GettyImages-683743933.jpg?auto=format&fit=crop&sharp=10&vib=20&ixlib=react-8.6.4&w=850'),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 30),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Raja Ampat',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.deepOrange,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('Posted on',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                    Text(' January 10, 2020',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Colors.deepOrangeAccent[100],
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Spacer(
                                      flex: 10,
                                    ),
                                    Icon(
                                      Icons.thumb_up,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Text(
                                      '100',
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    ),
                                    Spacer(
                                      flex: 5,
                                    ),
                                    Icon(
                                      Icons.comment,
                                      color: Colors.grey,
                                      size: 20,
                                    ),
                                    Spacer(
                                      flex: 1,
                                    ),
                                    Text(
                                      '100',
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Spacer(
                                      flex: 10,
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
