import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:sticky_headers/sticky_headers.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

var items = [1, 2, 3, 4, 5, 6, 7, 8];
var headers = ['Near You', 'Poupler'];

Widget card({String name, double rating, String location, int price, context}) {
  return InkWell(
    onTap: (){},
      child: Container(
      width: MediaQuery.of(context).size.width * 0.8,
      height: MediaQuery.of(context).size.height * 0.50,
      margin: EdgeInsets.all(9),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          )
        ],
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
              child: Image.asset(
                'assets/images/Co-Working-Space1.png',
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              )),
          Positioned(
            child: Text(
              'Co Working Space Name',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            bottom: MediaQuery.of(context).size.height * 0.15,
            left: 15,
          ),
          Positioned(
            child: Icon(
              Icons.location_on,
              color: Colors.deepPurple,
            ),
            bottom: MediaQuery.of(context).size.height * 0.10,
            left: 12,
          ),
          Positioned(
            child: Text(
              'Location',
              style: TextStyle(color: Colors.grey),
            ),
            bottom: MediaQuery.of(context).size.height * 0.102,
            left: 40,
          ),
          Positioned(
            child: Container(
              child: Center(
                child: Text('EGP 60/Hr'),
              ),
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  color: Colors.grey.shade200,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: Offset(0, 4),
                    )
                  ]),
            ),
            bottom: MediaQuery.of(context).size.height * 0.08,
            right: 15,
          ),
          Positioned(
            left: 15,
            bottom: MediaQuery.of(context).size.height * 0.04,
            child: RatingBarIndicator(
              rating: 5,
              itemBuilder: (context, index) => Icon(
                Icons.star,
                color: Colors.deepPurple,
              ),
              itemCount: 5,
              itemSize: 20.0,
              direction: Axis.horizontal,
            ),
          )
        ],
      ),
    ),
  );
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
          length: 3,
          child: NestedScrollView(
            headerSliverBuilder:
                (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: Colors.white,
                  leading: IconButton(icon: Icon(Icons.search), onPressed: null,iconSize: 30,),
                  
                  expandedHeight: 60.0,
                  centerTitle: true,
                  floating: false,
                  pinned: true,
                  // flexibleSpace: FlexibleSpaceBar(
                  //     //centerTitle: false,
                  //     title: Container(
                  //       child:
                  //           TextField(
                  //             //scrollPadding: EdgeInsets.only(top: 600),
                  //             decoration: InputDecoration(
                  //               //icon: Icon(Icons.search),
                  //               hintText: 'Search',
                                
                  //               //contentPadding: EdgeInsets.only(top:5),
                  //               enabledBorder: UnderlineInputBorder(
                  //                 borderSide: BorderSide(color: Colors.grey),
                  //               ),
                  //               focusedBorder: UnderlineInputBorder(
                  //                 borderSide: BorderSide(color: Colors.deepPurple),
                  //               ),
                  //               border: UnderlineInputBorder(
                  //                 borderSide: BorderSide(color: Colors.grey),
                  //               ),
                  //             )),
                  //       ),
                  //     ),
                  ),
                
                //new SliverPadding(
                  //padding: new EdgeInsets.all(0.0),
                  //sliver: new 
                  SliverList(
                    delegate: new SliverChildListDelegate([
                      TabBar(
                         indicator: BoxDecoration(
                  borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomLeft: Radius.circular(30)),
                  color: Colors.deepPurple.shade100),
                        indicatorColor: Colors.deepPurple,
                        labelColor: Colors.deepPurple,
                        unselectedLabelColor: Colors.grey,
                        
                        tabs: [
                        //   Container(
                        //     child: new Tab(text: "Tab 1"),
                        //     width: 80,
                        //     height: 40,
                        //     decoration: BoxDecoration(color: Colors.deepPurple,
                        //     borderRadius: BorderRadius.only(topRight: Radius.circular(40),bottomLeft: Radius.circular(40))
                            
                        //     ),
                        //   ),
                          new Tab(text: "Spaces"),
                          new Tab(text: "Events"),
                          new Tab(text: "Newsfeed"),
                        ],
                      ),
                    ]),
                  ),
               // ),
              ];
            },
            body: Column(
              children: <Widget>[
                Expanded(
                    child: ListView(children: <Widget>[
                  StickyHeader(
                    header: Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        'Near You',
                        style: const TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.w800,
                            fontSize: 25),
                      ),
                    ),
                    content: Container(
                        width: MediaQuery.of(context).size.width,
                        child: card(context: context)),
                  ),
                  Container(
                    child: InkWell(
                      onTap: (){},
                        child: Text(
                        'see all 22+',
                        style: TextStyle(color: Colors.deepPurple),
                      ),
                    ),
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.75,
                        bottom: 20),
                  ),
                  StickyHeader(
                      header: Container(
                        padding: EdgeInsets.only(left: 15),
                        child: Text(
                          'Popular',
                          style: const TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w800,
                              fontSize: 25),
                        ),
                      ),
                      content: Column(
                        children: <Widget>[
                          // Row(
                          //   children:<Widget>[
                          Container(
                              child: ListView.builder(
                                  physics: ClampingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: items.length,
                                  itemBuilder: (cntx, i) {
                                    return card(context: cntx);
                                  }))
                          //  ]
                          // )
                        ],
                      ))
                ]))
              ],
            ),
          )),
    );
  }
}
