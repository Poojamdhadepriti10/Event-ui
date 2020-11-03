import 'package:flutter/material.dart';
import 'Animation.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: Text("Events ", style: TextStyle(color: Colors.black, fontSize: 25),),
        
        brightness: Brightness.light,
        
        
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              // Container(
              //   height: 40,
              //   child: ListView(
              //     scrollDirection: Axis.horizontal,
              //     children: <Widget>[
              //       // AspectRatio(
              //       //   aspectRatio: 2.2/1,
              //       //   child: FadeAnimation(1, Container(
              //       //     margin: EdgeInsets.only(right: 10),
              //       //     decoration: BoxDecoration(
              //       //       color: Colors.grey[200],
              //       //       borderRadius: BorderRadius.circular(20)
              //       //     ),
              //       //     child: Center(
              //       //       child: Text("Events", style: TextStyle(fontSize: 20),),
              //       //     ),
              //       //   )),
              //       // ),
                    
              //     ],
              //   ),
              // ),
              // SizedBox(height: 20,),
              FadeAnimation(1.5, makeItem(image: 'assets/images/one.jpg', tag: 'red', context: context)),
              FadeAnimation(1.6, makeItem(image: 'assets/images/two.jpg', tag: 'blue', context: context)),
              FadeAnimation(1.7, makeItem(image: 'assets/images/three.jpg', tag: 'white', context: context)),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeItem({image, tag, context}) {
    return Hero(
      tag: tag,
      child: GestureDetector(
        onTap: () {          
        Navigator.of(context).pushReplacementNamed('/detail');
          // Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes(image: image,)));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey[400],
                blurRadius: 10,
                offset: Offset(0, 10)
              )
            ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(1, Text(" Explore ", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                  
                ],
              ),
             ],
          ),
        ),
      ),
    );
  }
}