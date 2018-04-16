import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.indigo,
        brightness: Brightness.dark,
      ),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: _appBar(),
      body: new HomeBody(),
    );
  }

  AppBar _appBar() => new AppBar(
        title: new Text("Profile"),
        elevation: 0.0,
        backgroundColor: Colors.indigo[700],
        leading: new IconButton(onPressed: () {}, icon: new Icon(Icons.menu)),
        actions: <Widget>[
          new IconButton(onPressed: () {}, icon: new Icon(Icons.search)),
        ],
      );
}

class HomeBody extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.indigo,
      constraints: new BoxConstraints.expand(),
      child: new Column(
        children: <Widget>[
          _options(),
          _avatar(),
          _profileName(),
          _profileBio(),
          _profileData(),
          _followButton()
        ],
      ),
    );
  }

  Padding _followButton() {
    return new Padding(
          padding:
              const EdgeInsets.symmetric(vertical: 32.0, horizontal: 42.0),
          child: new Container(
            constraints: new BoxConstraints.expand(height: 48.0),
            child: new FlatButton.icon(
                icon: new Icon(Icons.person_outline),
                color: Colors.indigo[200],
                onPressed: () {},
                label: new Text(
                  "Follow",
                  style: new TextStyle(fontSize: 16.0),
                )),
          ),
        );
  }

  Container _profileData() {
    var borderSide = new BorderSide(color: Colors.white24, width: 2.0);
    return new Container(
      decoration: new BoxDecoration(
        border: new Border(
          top: borderSide,
          bottom: borderSide,
        ),
      ),
      child: new Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: new Row(
          children: <Widget>[
            _profileDataItem("Posts", 343),
            _profileDataItem("Followers", 673826),
            _profileDataItem("Folowing", 275),
          ],
        ),
      ),
    );
  }

  Widget _profileDataItem(String name, int amount) => new Expanded(
        child: new Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: new Column(
            children: <Widget>[
              new Text(
                new DefaultMaterialLocalizations().formatDecimal(amount),
                style: new TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    color: Colors.white70),
              ),
              new Text(
                name.toUpperCase(),
                style: new TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w400,
                    height: 1.6,
                    color: Colors.white30),
              ),
            ],
          ),
        ),
      );

  Padding _profileBio() {
    return new Padding(
      padding: const EdgeInsets.fromLTRB(54.0, 8.0, 54.0, 32.0),
      child: new Text(
        "Snowboarder, superhero and writer. Sometimes I work at Google as Executive Chairman",
        textAlign: TextAlign.center,
        style: new TextStyle(
            fontSize: 18.0, fontWeight: FontWeight.w400, height: 1.2),
      ),
    );
  }

  Text _profileName() {
    return new Text(
      "Eric Schmidt",
      style: new TextStyle(fontSize: 48.0, fontWeight: FontWeight.w300),
    );
  }

  Padding _avatar() {
    return new Padding(
      padding: const EdgeInsets.all(16.0),
      child: new CircleAvatar(
        backgroundImage: new AssetImage("profile.jpg"),
        maxRadius: 60.0,
      ),
    );
  }

  Row _options() {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        new IconButton(icon: new Icon(Icons.mail), onPressed: () {}),
        new IconButton(icon: new Icon(Icons.more_vert), onPressed: () {})
      ],
    );
  }
}
