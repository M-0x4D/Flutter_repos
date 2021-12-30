import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: [
              CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg")),
              SizedBox(
                width: 15,
              ),
              Text("Chat", style: TextStyle(color: Colors.black)),
            ],
          ),
          actions: [
            IconButton(
              icon: CircleAvatar(
                child: Icon(
                  Icons.camera_alt,
                ),
              ),
              onPressed: () => print(""),
              color: Colors.blue,
            ),
            IconButton(
              icon: CircleAvatar(
                child: Icon(Icons.edit),
              ),
              onPressed: () => print(""),
              color: Colors.blue,
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[200]),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(
                      width: 10,
                    ),
                    Text("Search")
                  ],
                ),
                //color: Colors.grey,
              ),
              SizedBox(height: 20,),
              Column(

                children: [
                 Container(width: 60,child: Column(children: [ SingleChildScrollView(child: Row(children: [Stack(alignment: AlignmentDirectional.bottomEnd,children: [
                   CircleAvatar(radius: 25 ,backgroundImage: NetworkImage("https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg"),),
                   CircleAvatar(radius: 7, backgroundColor: Colors.green, )],),
                   SizedBox(height: 10,),
                   Text("Mohamed Adel",maxLines: 2,overflow: TextOverflow.ellipsis,) ,Stack(alignment: AlignmentDirectional.bottomEnd,children: [
                     CircleAvatar(radius: 25 ,backgroundImage: NetworkImage("https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg"),),
                     CircleAvatar(radius: 7, backgroundColor: Colors.green, )],),
                   SizedBox(height: 10,),
                   Text("Mohamed Adel",maxLines: 2,overflow: TextOverflow.ellipsis,) ,Stack(alignment: AlignmentDirectional.bottomEnd,children: [
                     CircleAvatar(radius: 25 ,backgroundImage: NetworkImage("https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg"),),
                     CircleAvatar(radius: 7, backgroundColor: Colors.green, )],),
                   SizedBox(height: 10,),
                   Text("Mohamed Adel",maxLines: 2,overflow: TextOverflow.ellipsis,) ,Stack(alignment: AlignmentDirectional.bottomEnd,children: [
                     CircleAvatar(radius: 25 ,backgroundImage: NetworkImage("https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg"),),
                     CircleAvatar(radius: 7, backgroundColor: Colors.green, )],),
                   SizedBox(height: 10,),
                   Text("Mohamed Adel",maxLines: 2,overflow: TextOverflow.ellipsis,) ,Stack(alignment: AlignmentDirectional.bottomEnd,children: [
                     CircleAvatar(radius: 25 ,backgroundImage: NetworkImage("https://www.pixsy.com/wp-content/uploads/2021/04/ben-sweet-2LowviVHZ-E-unsplash-1.jpeg"),),
                     CircleAvatar(radius: 7, backgroundColor: Colors.green, )],),
                   SizedBox(height: 10,),
                   Text("Mohamed Adel",maxLines: 2,overflow: TextOverflow.ellipsis,) ],),),


                 ],),),


                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
