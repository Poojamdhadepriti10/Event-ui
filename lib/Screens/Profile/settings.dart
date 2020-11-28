import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'constants.dart';

class SettingScreen extends StatefulWidget {
  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var profileInfo = Expanded(
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 50),
            child: Stack(
              children: <Widget>[
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('assets/images/one.jpg'),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Text(
            ' Sonal Sawant',
            style: kTitleTextStyle,
          ),
          SizedBox(height: 12),
          Text(
            ' SonalSawant@gmail.com',
            style: kCaptionTextStyle,
          ),
          SizedBox(height: 20),
        ],
      ),
    );

    var header = Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(width: 30),
        profileInfo,
        SizedBox(width: 30),
      ],
    );

    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 20),
          header,
          Expanded(
            child: ListView(
              children: <Widget>[
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Center(
                          child: RaisedButton(
                            elevation: 5.0,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/edit');
                            },
                            padding: EdgeInsets.all(15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Icon(Icons.edit),
                                Text(
                                  ' Edit Profile',
                                  style: TextStyle(
                                    color: Color(0xFF527DAA),
                                    letterSpacing: 1.5,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Center(
                          child: RaisedButton(
                            elevation: 5.0,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/fav');
                            },
                            padding: EdgeInsets.all(15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Icon(Icons.favorite),
                                Text(
                                  ' Favorites',
                                  style: TextStyle(
                                    color: Color(0xFF527DAA),
                                    letterSpacing: 1.5,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Center(
                          child: RaisedButton(
                            elevation: 5.0,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/par');
                            },
                            padding: EdgeInsets.all(15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Icon(Icons.bookmark),
                                Text(
                                  ' Participated',
                                  style: TextStyle(
                                    color: Color(0xFF527DAA),
                                    letterSpacing: 1.5,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 90.0),
                        child: Center(
                          child: RaisedButton(
                            elevation: 5.0,
                            onPressed: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/logout');
                            },
                            padding: EdgeInsets.all(15.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            color: Colors.white,
                            child: Row(
                              children: [
                                Icon(Icons.logout),
                                Text(
                                  ' Logout ',
                                  style: TextStyle(
                                    color: Color(0xFF527DAA),
                                    letterSpacing: 1.5,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
