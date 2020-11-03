import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 400.0,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 60,
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/one.jpg'),
                            fit: BoxFit.fill,
                          ),
                        ),
                        // color: Colors.lightBlue[100],
                        child: Column(
                          children: [
                              // backgroundColor: Colors.lightBlue[100],
                              
                              IconButton(
                                icon: Icon(Icons.arrow_back),
                                onPressed: () => Navigator.pop(context),
                                iconSize: 30.0,
                                color: Colors.lightBlue[900],
                              ),
                            
                            // Container(
                            //   child: Image.asset('assets/images/one.jpg',
                            //       width: 340, height: 190, fit: BoxFit.cover),
                            // )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 270,
                      left: 20,
                      right: 20,
                      bottom: 0,
                      child: Card(
                        elevation: 0.5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    " Smashing Holi ",
                                    style: TextStyle(
                                        fontSize: 23.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.lightBlue[900]),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  SizedBox(width: 12.0),
                                  Text(
                                    " Kalyan west",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.lightBlue[900]),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  SizedBox(width: 12.0),
                                  Text(
                                    " 24 Mar",
                                    style: TextStyle(
                                        fontSize: 17,
                                        color: Colors.lightBlue[900]),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(height: 12.0),
                    ListTile(
                      leading: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/images/five.jpg"),
                      ),
                      title: Text(
                        " Pooja Jamdhade ",
                        style: TextStyle(
                            fontSize: 20, color: Colors.lightBlue[900]),
                      ),
                      subtitle: Text(
                        "Event Head",
                        style: TextStyle(fontSize: 17, color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18),
                      child: Text(
                        "Description: The Festival Of Colours is inspired by the traditional Hindu festival Holi, which usually takes place in March an marks the coming of spring.[1] On this day, people throw powdered paint, known as gulal (hindi) or rang (nepali), at each other. For one day the distinctions between castes, religions and gender are set aside and everyone is equal.[2] The festival is primarily observed in India and Nepal, but also in many other countries with a large Hindu population.",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 19, color: Colors.lightBlue[900]),
                      ),
                      
                    ),
                    SizedBox(height: 20.0),
                    SizedBox(
                      width: 200,
                      child: RaisedButton(
                        elevation: 5.0,
                        onPressed: () {
                          Navigator.of(context).pushReplacementNamed('/login');
                        },
                        padding: EdgeInsets.all(15.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        color: Colors.lightBlue[900],
                        child: Text(
                          'Participate',
                          style: TextStyle(
                            color: Colors.white,
                            letterSpacing: 1.5,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            // fontFamily: 'OpenSans',
                          ),
                        ),                      
                      ),
                    ),
                    SizedBox(height: 30.0)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
