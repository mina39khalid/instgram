import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child:
          SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                      Icon(Icons.arrow_back,color: Colors.white,),
                      Icon(Icons.more_horiz,color: Colors.white,), ],
                  ),

                  Container(

                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),),

                    child:
                    Column(
                      children: [
                        Column(
                          children: [
                            Center(
                              child: Container(width:100,height: 100,
                                margin: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  image: new DecorationImage(
                                    image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsSZ4Ce7VRwioaeg0UtZ5TdrFaMMxEj3gAeA&usqp=CAU'),
                                  ),) ,),
                            ),
                            Padding(padding:EdgeInsets.all(10) ),
                            Text('Ophelia Coleman',style: TextStyle(fontSize: 20),),
                            Padding(padding:EdgeInsets.all(10)),
                            Text('Less Angiss,Ca',style: TextStyle(fontSize: 12),),
                            Padding(padding:EdgeInsets.all(10)),
                            Text('It is a long established fact that a reader will',style: TextStyle(fontSize: 12),),
                            SizedBox(height: 20,),
                            Row( mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(width:30,height: 30,
                                  margin: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(50),),child: Icon(Icons.chat_outlined,color: Colors.blue,),
                                ),
                                Container(
                                  width: 150,
                                  height: 50,

                                  child: ElevatedButton(

                                    onPressed: () {
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.blue,
                                      shape: new RoundedRectangleBorder(
                                        borderRadius: new BorderRadius.circular(30.0),

                                      ),),

                                    child: Text("follow"),
                                  ),
                                ),Container(width:30,height: 30,
                                  margin: EdgeInsets.all(3),
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300],
                                    borderRadius: BorderRadius.circular(50),),child: Icon(Icons.share,color: Colors.blue,),
                                ),],),
                            SizedBox(height: 30,),
                            Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:
                              [
                                Column(
                                  children: [
                                    Text('870',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                    Text('following',style: TextStyle(fontSize: 15),),
                                    VerticalDivider(
                                      width: 40,
                                      color: Colors.grey,
                                    ),],

                                ),
                                Column(
                                  children: [
                                    Text('120K',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                    Text('followers',style: TextStyle(fontSize: 15),),
                                    VerticalDivider(
                                      width: 40,
                                      color: Colors.grey,
                                    ),
                                  ],),

                                Column(
                                  children: [
                                    Text('354K',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                                    Text('Likes',style: TextStyle(fontSize: 15),),
                                    VerticalDivider(
                                      width: 40,
                                      color: Colors.grey,),],) ],
                            )  ],
                        ),
                        Padding(padding: EdgeInsets.all(10)),

                        SizedBox(height: 15,),
                        Row(
                          children: [Padding(padding: EdgeInsets.all(10)),
                            Text('Followers',style: TextStyle(color: Colors.blue[900]),),
                            SizedBox(width: 330,),
                            Text('View All',style: TextStyle(color: Colors.blue),),
                          ],),
                        Container( height: 70,
                          margin: EdgeInsets.all(20),

                          child: ListView(scrollDirection: Axis.horizontal,
                              children: [
                                Row(children: [
                                  Followers(),
                                  SizedBox(width: 18,),
                                  Followers(),
                                  SizedBox(width: 18,),
                                  Followers(),
                                  SizedBox(width: 18,),
                                  Followers(),
                                  SizedBox(width: 18,),
                                  Followers(),
                                  SizedBox(width: 18,),
                                  Followers(),
                                  SizedBox(width: 18,),
                                  Followers(),
                                ],
                                ),
                              ]
                          ),
                        ),
                        Row(children: [
                          SizedBox(width: 40,),
                          Text('lsaiah'),
                          SizedBox(width: 50,),
                          Text('Jayden'),
                          SizedBox(width: 55,),
                          Text('hunter'),
                          SizedBox(width: 53,),
                          Text('Ethel'),
                          SizedBox(width: 50,),
                          Text('lsaiah'),
                        ],
                        ),
                        Padding(padding: EdgeInsets.all(10)),
                        Divider(thickness: 12,),
                        SizedBox(height: 15,),
                        Row( children: [Padding(padding: EdgeInsets.all(10)),
                          Text('Posts',style: TextStyle(color: Colors.blue[900]),),
                        ],),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                            Image.asset('screen/img_4.png',width: 240,height: 260,),

                            Image.asset('screen/img_4.png',width: 240,height: 260,),

                            // Image.asset('screen/img_4.png',width: 240,height: 260,),

                          ],
                        )
                      ],
                    ),
                  ),

                ],
              ))),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(bottom: 10),

        child: DotNavigationBar(

          currentIndex: _SelectedTab.values.indexOf(_selectedTab),
          dotIndicatorColor: Colors.white,
          unselectedItemColor: Colors.grey[300],
          // enableFloatingNavBar: false,
          onTap: _handleIndexChanged,
          items: [
            /// Home
            DotNavigationBarItem(
              icon: Icon(Icons.home,color: Colors.black,),
              selectedColor: Color(0xff73544C),
            ),
            /// Home
            DotNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.black,),
              selectedColor: Color(0xff73544C),
            ),

            /// Likes
            DotNavigationBarItem(
              icon: Icon(Icons.send_time_extension_outlined,color: Colors.black,),
              selectedColor: Color(0xff73544C),
            ),

            /// Search
            DotNavigationBarItem(
              icon: Icon(Icons.favorite_outline_sharp,color: Colors.black,),
              selectedColor: Color(0xff73544C),
            ),

            /// Profile
            DotNavigationBarItem(
              icon: Icon(Icons.person,color: Colors.black,),
              selectedColor: Color(0xff73544C),
            ),
          ],
        ),
      ),
    );
  }
  Container Followers()
  { return  Container(
    height: 70,  width: 70,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(35),
      image: new DecorationImage(
        image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTsSZ4Ce7VRwioaeg0UtZ5TdrFaMMxEj3gAeA&usqp=CAU'),
      ),
    ),
  );}
}
enum _SelectedTab { home,search ,explor ,favorite, person }
