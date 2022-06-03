import 'package:flutter/material.dart';
import 'package:restaurant/myRestaurants.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  late TabController tabController;

  @override
  void initState(){
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(
          color: Colors.grey,
          fontFamily: 'Roboto',
        ),),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.edit,
              color: Colors.grey,
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      image: DecorationImage(
                        image: AssetImage('assets/chris.jpg'),
                        fit: BoxFit.cover,
                      )
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 230.0,
                top: 90.0,
                child: Container(
                  height: 25.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.white,
                  ),
                  child: Icon(
                    Icons.fastfood,
                    color: Colors.red,
                    size: 14.0,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 20.0),
              Text('Chloe Hannouille',style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20.0,
                color: Color(0XFF1D3062),
              ),),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text('Dum-Dum Island',style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),),
                ],
              ),
            ],
          ),
          SizedBox(height: 15.0),
          Container(
            height: 100.0,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.05),
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text('121K',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      color: Colors.red,
                    ),),
                    Text('Followers',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),),
                  ],
                ),
                Column(
                  children: [
                    Text('152',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      color: Colors.red,
                    ),),
                    Text('Following',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),),
                  ],
                ),
                Column(
                  children: [
                    Text('455',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      color: Colors.red,
                    ),),
                    Text('Taste Maker',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14.0,
                      color: Colors.grey,
                    ),),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              isScrollable: true,
              labelColor: Color(0xFF33426F),
              unselectedLabelColor: Color(0xFFB6BDC7),
              tabs: [
                Tab(
                  child: Text('My Restaurants',style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20.0
                  ),),
                ),
                Tab(
                  child: Text('My Wishlist',style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20.0
                  ),),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            height: MediaQuery.of(context).size.height - 450.0,
            child: TabBarView(
              controller: tabController,
              children: [
                new MyRestaurants(),
                new MyRestaurants(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


