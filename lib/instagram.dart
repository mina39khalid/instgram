import 'package:flutter/material.dart';
import 'package:instgram/explore.dart';
import 'package:instgram/profile.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
class instgram extends StatefulWidget {
  const instgram({Key? key}) : super(key: key);

  @override
  State<instgram> createState() => _instaState();
}

class _instaState extends State<instgram> {
  var _selectedTab = _SelectedTab.home;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:   AppBar(
        backgroundColor: Colors.white,
        title: Image.asset('screen/img_1.png',width: 110,height: 110,),
        actions: [
          Icon(Icons.add_sharp,color: Colors.black,),
          SizedBox(width: 10,),
          Icon(Icons.chat_rounded,color: Colors.black,),
        ], elevation: 0,),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child:SafeArea(
          child: Column(
            children: [
              SizedBox(height: 10,),


              Container( height: 80,
                margin: EdgeInsets.only(left: 0),

                child: ListView(scrollDirection: Axis.horizontal,
                  children: [
                    Row(children: [
                      Stoy(),
                      Stoy(),
                      Stoy(),
                      Stoy(),
                      Stoy(),
                      Stoy(),
                      Stoy(),
                      Stoy(),
                      Stoy(),
                      Stoy(),
                      Stoy(),
                      Stoy(),
                    ],
                    )
                  ],
                ),
              ),
              Row(children: [
                SizedBox(width: 25,),
                Text('lsaiah'),
                SizedBox(width: 50,),
                Text('Jayden'),
                SizedBox(width: 50,),
                Text('hunter'),
                SizedBox(width: 53,),
                Text('Ethel'),
                SizedBox(width: 55,),
                Text('jake'),
                SizedBox(width: 55,),
                Text('jor'),

              ],
              ),
              Divider( height: 10,color: Colors.grey,),
              Row(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> profile()
                      )
                      );
                    },
                    child: Container(width: 30,height: 30,
                      margin: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        border: Border.all(
                            width: 2,color: Colors.pink
                        ),
                        image: new DecorationImage(
                            image: AssetImage('screen/img_3.png') ),),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(height: 18,width: 12,),
                      Text('microverseinc',style: TextStyle(fontSize: 15),),
                      SizedBox(height: 20,), ],
                  ),SizedBox(width: 344,),
                  Icon(Icons.more_horiz_outlined), ],
              ),
              Image(image: AssetImage('screen/img_2.png'),width: 600,height: 400,fit: BoxFit.fitWidth,),
              Row(children: [ SizedBox(height: 40,width: 10,),
                Icon(Icons.favorite_border_outlined),
                SizedBox(height: 40,width: 10,),
                Icon(Icons.mode_comment_outlined),
                SizedBox(height: 40,width: 13,),
                Icon(Icons.send),
                SizedBox(height: 40,width: 360,),
                Icon(Icons.bookmark_border,)],
              ),
              Row(children: [ SizedBox(width: 10,),Text('54 likes'),],),
              Row(children: [ SizedBox(width: 10,height: 20,), Text('microverseinc ',style:TextStyle(fontWeight: FontWeight.bold),),
                Text('Do you want to know how to ...'), Text('more',style: TextStyle(color: Colors.grey),)],),
              Row(children: [ SizedBox(width: 10,height: 20,), Text('View all 5 comment',style: TextStyle(color: Colors.grey),)],),
              Row(children: [ SizedBox(width: 10), Text('july 25',style: TextStyle(color: Colors.grey,fontSize: 12),)],),


              Column(children: [
                GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> explore()
                    )
                    );
                  },

               child: Container(width: 100,height: 50,
                decoration: BoxDecoration(
                  color: Colors.deepPurple[300],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(child: Text('Expoler',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),))],)

            ],
          ),

        ),),
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
              icon: Icon(Icons.home_filled,color: Colors.black,),
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
      ),  );
  }
  Container Stoy(){
    return Container(width: 80,height: 80,
      margin: EdgeInsets.only(right: 5,left: 5,bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        border: Border.all(
            width: 2,color: Colors.pink
        ),
        image: new DecorationImage(
            image: AssetImage('screen/img.png') ),),
    );

  }
}
enum _SelectedTab { home,search ,explor ,favorite, person }
