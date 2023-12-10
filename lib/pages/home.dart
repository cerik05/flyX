import 'package:flutter/material.dart';
import 'package:uniapp/models/technician.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String mon = 'M';
  String tue = 'T';
  String wed = 'W';
  String thu = 'T';
  String fri = 'F';
  String sat = 'S';
  String sun = 'S';
  String tod = "Today";
  String month = "March";
  String inc = "INCOME";
  String spe = "SPENT";
  String inc_m = "€ 184.95";
  String spe_m = "€ 78.05";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: const Color(0xff1f2227),
          body: Stack(
            children: <Widget>[
              Container(
                width: 432.0,
                height: 900.0,
                margin: EdgeInsets.only(top: 325),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(-1.4, -1.75),
                    end: Alignment(0.59, 1.0),
                    colors: [
                      const Color(0xff2a2d36),
                      const Color(0xff262931),
                      const Color(0xff332c2c)
                    ],
                    stops: [0.0, 0.623, 1.0],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50, bottom: 550),
                child: ListView(
                  padding: EdgeInsets.only(left: 20),
                  children: getTechniciansInArea(),
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Container(
                width: 428.0,
                height: 112.0,
                margin: EdgeInsets.only(top: 760),
                decoration: BoxDecoration(
                  color: const Color(0xff484b52),
                ),
              ),
              Container(
                width: 40.0,
                height: 200.0,
                margin: EdgeInsets.only(top: 400, left: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -0.78),
                    end: Alignment(0.33, 1.31),
                    colors: [const Color(0xff2f363e), const Color(0xff42464b)],
                    stops: [0.0, 1.0],
                  ),
                  color: const Color(0xff484b52),
                ),
              ),
              Container(
                width: 40.0,
                height: 200.0,
                margin: EdgeInsets.only(top: 400, left: 75),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -0.78),
                    end: Alignment(0.33, 1.31),
                    colors: [const Color(0xff2f363e), const Color(0xff42464b)],
                    stops: [0.0, 1.0],
                  ),
                  color: const Color(0xff484b52),
                ),
              ),
              Container(
                width: 40.0,
                height: 200.0,
                margin: EdgeInsets.only(top: 400, left: 130),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -0.78),
                    end: Alignment(0.33, 1.31),
                    colors: [const Color(0xff2f363e), const Color(0xff42464b)],
                    stops: [0.0, 1.0],
                  ),
                  color: const Color(0xff484b52),
                ),
              ),
              Container(
                width: 40.0,
                height: 200.0,
                margin: EdgeInsets.only(top: 400, left: 185),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -0.78),
                    end: Alignment(0.33, 1.31),
                    colors: [const Color(0xff2f363e), const Color(0xff42464b)],
                    stops: [0.0, 1.0],
                  ),
                  color: const Color(0xff484b52),
                ),
              ),
              Container(
                width: 40.0,
                height: 200.0,
                margin: EdgeInsets.only(top: 400, left: 240),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -0.78),
                    end: Alignment(0.33, 1.31),
                    colors: [const Color(0xff2f363e), const Color(0xff42464b)],
                    stops: [0.0, 1.0],
                  ),
                  color: const Color(0xff484b52),
                ),
              ),
              Container(
                width: 40.0,
                height: 200.0,
                margin: EdgeInsets.only(top: 400, left: 295),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -0.78),
                    end: Alignment(0.33, 1.31),
                    colors: [const Color(0xff2f363e), const Color(0xff42464b)],
                    stops: [0.0, 1.0],
                  ),
                  color: const Color(0xff484b52),
                ),
              ),
              Container(
                width: 40.0,
                height: 200.0,
                margin: EdgeInsets.only(top: 400, left: 350),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35.0),
                    topRight: Radius.circular(35.0),
                    bottomLeft: Radius.circular(35.0),
                    bottomRight: Radius.circular(35.0),
                  ),
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -0.78),
                    end: Alignment(0.33, 1.31),
                    colors: [const Color(0xFF25292C), const Color(0xff42464b)],
                    stops: [0.0, 1.0],
                  ),
                  color: const Color(0xff484b52),
                ),
              ),
              Container(
                width: 800,
                //height: 900.0,
                margin: EdgeInsets.only(top: 400, right: 10),
                child: Image.asset('assets/images/gafulet.png'),
              ),
              Container(
                  alignment: Alignment(-0.845, 0.36),
                  child: Text(
                    mon,
                    style: TextStyle(color: Colors.grey[300], fontSize: 22),
                  )),
              Container(
                  alignment: Alignment(-0.555, 0.36),
                  child: Text(
                    tue,
                    style: TextStyle(color: Colors.grey[300], fontSize: 22),
                  )),
              Container(
                  alignment: Alignment(-0.284, 0.36),
                  child: Text(
                    wed,
                    style: TextStyle(color: Colors.grey[300], fontSize: 22),
                  )),
              Container(
                  alignment: Alignment(-0.001, 0.36),
                  child: Text(
                    thu,
                    style: TextStyle(color: Colors.grey[300], fontSize: 22),
                  )),
              Container(
                  alignment: Alignment(0.282, 0.36),
                  child: Text(
                    fri,
                    style: TextStyle(color: Colors.grey[300], fontSize: 22),
                  )),
              Container(
                  alignment: Alignment(0.552, 0.36),
                  child: Text(
                    sat,
                    style: TextStyle(color: Colors.grey[300], fontSize: 22),
                  )),
              Container(
                  alignment: Alignment(0.828, 0.36),
                  child: Text(
                    sun,
                    style: TextStyle(color: Colors.grey[300], fontSize: 22),
                  )),
              Container(
                  alignment: Alignment(-0.845, -0.17),
                  child: Text(
                    tod,
                    style: TextStyle(color: Colors.grey[300], fontSize: 30),
                  )),
              Container(
                  alignment: Alignment(0.8, -0.17),
                  child: Text(
                    month,
                    style: TextStyle(color: Colors.grey[300], fontSize: 30),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 650, left: 30),
                child: FloatingActionButton(
                  backgroundColor: const Color(0xff587bcc),
                  child: Icon(
                    Icons.add,
                    color: Colors.grey[200],
                    size: 37,
                  ),
                  onPressed: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 650, left: 220),
                child: FloatingActionButton(
                  backgroundColor: const Color(0xFFCC6958),
                  child: Icon(
                    Icons.horizontal_rule,
                    color: Colors.grey[200],
                    size: 37,
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                  alignment: Alignment(-0.45, 0.567),
                  child: Text(
                    inc,
                    style: TextStyle(color: Colors.grey[300], fontSize: 23),
                  )),
              Container(
                  alignment: Alignment(0.64, 0.567),
                  child: Text(
                    spe,
                    style: TextStyle(color: Colors.grey[300], fontSize: 23),
                  )),
                  Container(
                  alignment: Alignment(-0.42, 0.640),
                  child: Text(
                    inc_m,
                    style: TextStyle(color: Colors.grey[300], fontSize: 23),
                  )),
                  Container(
                  alignment: Alignment(0.69, 0.640),
                  child: Text(
                    spe_m,
                    style: TextStyle(color: Colors.grey[300], fontSize: 23),
                  )),
            ],
          )),
    );
  }

  List<Widget> getTechniciansInArea() {
    List<Technician> techies = getTechies();
    List<Widget> cards = [];
    for (Technician techy in techies) {
      cards.add(strackCard(techy));
    }
    return cards;
  }
}

List<Technician> getTechies() {
  List<Technician> techies = [];
  for (int i = 0; i < 6; i++) {
    Technician myTechy = new Technician("Netflix", "somthingidk");
    techies.add(myTechy);
  }
  return techies;
}

List<Widget> getTechniciansInArea() {
  List<Technician> techies = getTechies();
  List<Widget> cards = [];
  for (Technician techy in techies) {
    cards.add(strackCard(techy));
  }
  return cards;
}

Widget strackCard(Technician technician) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(right: 20),
    width: 180,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      gradient: LinearGradient(
        begin: Alignment(0.0, -1.0),
        end: Alignment(0.39, 2.77),
        colors: [const Color(0xff353c45), const Color(0xff0b0c0e)],
        stops: [0.0, 1.0],
      ),
      boxShadow: [
        new BoxShadow(
          color: const Color(0xB31D1B1B),
          offset: Offset(0, 2),
          blurRadius: 20.0,
        ),
      ],
    ),
    child: Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
             Container(
               child: CircleAvatar(
                 backgroundImage:
                    NetworkImage('https://myrepublica.nagariknetwork.com/uploads/media/unnamed_20200404140452.png'),
                backgroundColor: Colors.transparent,
                 ),
               ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  technician.untitled,
                  style: TextStyle(
                      fontFamily: 'Gotham',
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color:  Colors.grey[300]),
                ),
              ],
            )
          ],
        ),
        Container(
          margin: EdgeInsets.only(top: 24), //PUT TEXT todo
          child: Row(
            children: <Widget>[
              Text(
                "Subscription:  ",
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[300]),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 57), //PUT TEXT todo
          child: Row(
            children: <Widget>[
              Text(
                "€ 7.99 ",
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.green),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20), //PUT TEXT todo
          child: Row(
            children: <Widget>[
              Text(
                "Next payment:  ",
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.grey[300]),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 10, left: 48), //PUT TEXT todo
          child: Row(
            children: <Widget>[
              Text(
                "32. dec. 2020 ",
                style: TextStyle(
                    fontFamily: 'Gotham',
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.green),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
