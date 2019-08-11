import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen();

  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Color(0xff7A1600),
      elevation: 0.0,
      centerTitle: true,
      title: Text(
        'My Profile',
        style: TextStyle(color: Colors.white),
      ),
      leading: new IconButton(
        icon: new Icon(Icons.close),
        onPressed: () => null,
      ),
    );

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: Color(0xff7A1600),
        systemNavigationBarColor: Color(0xff7A1600)));

    return Scaffold(
      appBar: appBar,
      body: _goGrillBody(),
    );
  }

  Widget _goGrillBody() {
    return Container(
      color: Color(0xff7A1600),
      child: Container(
        margin: EdgeInsets.only(top: 16),
        color: Color(0xff7A1600),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 48.0, left: 24.0, right: 24.0),
                  height: 277.0,
                  width: double.infinity,
                  child: Card(
                    elevation: 8.0,
                    child: Stack(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () => null,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 16.0, right: 16.0, bottom: 32.0, top: 62.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                child: Text(
                                  "Felipe Ramon Silveira das Neves",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("e-mail:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0)),
                                    Text("felipe.rsneves@gmail.com",
                                        style: TextStyle(fontSize: 14.0))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Gender:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0)),
                                    Text("--", style: TextStyle(fontSize: 14.0))
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text("Phone:",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 14.0)),
                                    Text("(19) 98271-1390",
                                        style: TextStyle(fontSize: 14.0))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    width: 98,
                    height: 98,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black54,
                          blurRadius: 6.0,
                          spreadRadius: 0.0,
                          offset: Offset(0.0, 4.0),
                        )
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://www.rd.com/wp-content/uploads/2017/09/01-shutterstock_476340928-Irina-Bg-1024x683.jpg"),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 16.0),
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  onPressed: () {
                    print("I was tapped!");
                  },
                  color: Colors.white,
                  child: Center(
                    child: Text(
                        'My past events',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 16.0),
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  onPressed: () {
                    print("I was tapped!");
                  },
                  color: Colors.white,
                  child: Center(
                    child: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 16.0),
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  onPressed: () {
                    print("I was tapped!");
                  },
                  color: Colors.white,
                  child: Center(
                    child: Text(
                        'Call your friends to this amazing app',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 16.0),
              child: SizedBox(
                width: double.infinity,
                height: 50.0,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                  onPressed: () {},
                  color: Colors.white,
                  child: Center(
                    child: Text(
                        'Rate us on Google Play',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
