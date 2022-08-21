import 'package:flutter/material.dart';

class pro extends StatefulWidget {
  const pro({Key? key}) : super(key: key);

  @override
  State<pro> createState() => _proState();
}

class _proState extends State<pro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios_new),
              Icon(Icons.notifications_active),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            height: 80,
            width: 80,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.withOpacity(0.4),
                    blurRadius: 20,
                    spreadRadius: 20,
                    offset: Offset(0, 7)),
              ],
              shape: BoxShape.circle,
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage(
                    'https://cdn1.iconfinder.com/data/icons/avatar-97/32/avatar-02-512.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [ SizedBox(height: 10,),
              Text('Zahraa',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Text('Baghdad',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey),),
            ],),
          Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Informationbo(53 , 'photos'),
              Informationbo(132 , 'Followers'),
              Informationbo(1000 , 'Following'),
            ],),
          SizedBox(height: 10,),
          Container(
            width:460, height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.grey.shade300,),
            child: GridView.count( mainAxisSpacing: 10, crossAxisSpacing: 10,
              crossAxisCount: 3, padding: EdgeInsets.all(13),
              children: [
                Container(width: 20,height: 20,
                  color: Colors.amber,),
                Container(width: 20,height: 20,
                  color: Colors.blueAccent,),
                Container(width: 20,height: 20,
                    color: Colors.brown),
                Container(width: 20,height: 20,
                    color: Colors.deepPurple),
                Container(width: 20,height: 20,
                    color: Colors.black),
                Container(width: 20,height: 20,
                    color: Colors.pink),
              ],
            ),
          ),],
      ),

    );

  }

  Column Informationbo( int number , String name)
  {
    return  Column(
      children: [
        SizedBox(height: 20,),
        Text('$number',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
        Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 14,color: Colors.grey),),

      ],);
  }

}
