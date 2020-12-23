import 'package:flutter/material.dart';
import 'package:galleryimage_app/main.dart';


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    textStyle() {
      return new TextStyle(color: Colors.white, fontSize: 30.0);
    }

    return new DefaultTabController(
      length: 2,
      child: new Scaffold(
        appBar: new AppBar(backgroundColor: Colors.white,
          title: new Text("Home"),

        ),
        body:DefaultTabController(
          length: 2,
          child: Column(
            children: <Widget>[Container(color:Color(0xFF6A1B9A),child:Column(children:[Row(children:[Padding(padding: EdgeInsets.only(left:14,top: 34
            ),),Text("Hi, Abhisikta Dash",style: TextStyle(color: Colors.white,fontSize: 18),),]),
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: TabBar(indicatorColor:Colors.white,indicatorWeight:2,labelColor:Colors.white,unselectedLabelColor:Colors.white54,labelStyle:TextStyle(fontSize: 14),tabs: [
                  Tab(icon: Container(child:Column(children:[Container(height:28,child:new Image.asset("images/parent.png",color: Colors.white)), Text("First")]))),
                  Tab(icon: Container(child:Column(children:[Container(height:28,child:new Image.asset("images/teacher.png",color: Colors.white)), Text("Second")]))),
                ]),
              ),])),
              Expanded(
                child: Container(
                  child: TabBarView(children: [
                    Container(
                      child: CameraExampleHome(),
                    ),
                    Container(
                      child: Text("Second"),
                    ),

                  ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}