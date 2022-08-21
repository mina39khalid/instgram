import 'package:flutter/material.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
class explore extends StatefulWidget {
  const explore({Key? key}) : super(key: key);

  @override
  State<explore> createState() => _exploreState();
}

class _exploreState extends State<explore> {
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
      extendBody: true,
      body: SafeArea(
        child: Column(
          children: [

            Container(
              height: 35, width: 460,
              margin: EdgeInsets.only(top: 10,right: 6,left: 6,bottom: 8),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius:  BorderRadius.circular(8),
              ),
              child: Row(
                children: [ Padding(padding: EdgeInsets.all(3)),
                Icon(Icons.search,color: Colors.grey[600],),
                SizedBox(width: 4,),
                Text('Search',style: TextStyle(color: Colors.grey[600],fontSize: 16),),
              ],),
            ),
        Container(
          width:500, height: 578,
            color: Colors.grey.shade300,
          child:
            GridView.count(crossAxisCount: 3,
              crossAxisSpacing: 3,
              mainAxisSpacing: 3,
              children: [
                Post('https://images.pexels.com/photos/3997389/pexels-photo-3997389.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://images.pexels.com/photos/376464/pexels-photo-376464.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://images.pexels.com/photos/322207/pexels-photo-322207.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://images.pexels.com/photos/965731/pexels-photo-965731.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://images.pexels.com/photos/848205/pexels-photo-848205.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://i0.wp.com/www.highongloss.com/wp-content/uploads/2021/07/must-have-lipstick.jpg?fit=960%2C640&ssl=1'),
                Post('https://images.pexels.com/photos/325527/pexels-photo-325527.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://images.pexels.com/photos/1078983/pexels-photo-1078983.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://images.pexels.com/photos/1199960/pexels-photo-1199960.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://images.pexels.com/photos/3608263/pexels-photo-3608263.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://images.pexels.com/photos/2547462/pexels-photo-2547462.jpeg?auto=compress&cs=tinysrgb&w=600'),
                Post('https://images.pexels.com/photos/3861976/pexels-photo-3861976.jpeg?auto=compress&cs=tinysrgb&w=600'),
              ],), )],
        ),
      ),
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
      ),
    );
  }
Container Post( String url)
{ return    Container(width: 20, height: 20,
  decoration: BoxDecoration(
    color: Colors.grey,
    image: DecorationImage(
        image: NetworkImage( url ),
        fit: BoxFit.cover
    ),),
);
}
}
enum _SelectedTab { home,search ,explor ,favorite, person }




