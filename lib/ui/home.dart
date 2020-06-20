import 'package:flutter/material.dart';

class Wisdom extends StatefulWidget {
  @override
  _WisdomState createState() => _WisdomState();
}

class _WisdomState extends State<Wisdom> {

  int _index = 0;

  List quotes = [
                "Work hard for the money. If it requires no sleeping at night, stay awake all night long.",
                "If you have a legal job, you come home from it and you need to do even more to provide your living. The only thing that cheers you up is that your hands are clean.",
                "Iyanumashele Soonest!",
                "Who dey sleep, no dey cashout.",
                "Code yourself cus some niggas get money pass ur clients.",
                "Battery wey full go still low,battery wey low go still full, our prayers be say, make our charger no spoil.",
                "When they say hustle is hard, It is not by strength o, Because you will be shocked that even Dangote can’t lift one bag of cement.",
                "Las Las, School na scam",
                "Hustle go Pay!",
                "Person wey dey find money know dey off data.",
                "What goes up must come down, (except me).",
                "Streets tough, Hustle na the way.",
                "Fear who never collect",
                "On God",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            Expanded (
              child: Container (
                width: 350,
                height: 200,
                margin: EdgeInsets.all(30.0),
                decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  borderRadius: BorderRadius.circular(14.5)
                ),

                child: Center (
                  child: Text(
                      quotes[_index % quotes.length]
                    ),
                  ),
              ),
            ),
            Divider (thickness: 1.3,),
            Padding(
            padding: const EdgeInsets.only(top: 18.0),
            ),
            FlatButton.icon(
              color: Colors.greenAccent.shade700,
             onPressed: _showQuote,
             icon: Icon(Icons.wb_sunny),
             label: Text("Inspire Me!", style: TextStyle(
               fontSize: 18.8,
               color: Colors.white,
             ),)
                        )
                      ]
                    )
                  ),
                  
                );
              }
            
              void _showQuote() {
                //increament index/counter, by 1
                setState(() {
                  _index += 1;
                });
                
  }
}


class ScaffoldExample extends StatelessWidget {
  _tapbutton() {
    debugPrint("Button Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("App It!"),
          centerTitle: true,
          backgroundColor: Colors.amberAccent.shade700,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.email),
                onPressed: () => debugPrint("Email Tapped!")),
            IconButton(icon: Icon(Icons.access_alarm), onPressed: _tapbutton),
          ]
          ),

          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.lightGreen,
            child: Icon(Icons.call_missed_outgoing),
            onPressed: () => debugPrint("Outgoing"),
          ),
          bottomNavigationBar: BottomNavigationBar(items: [
            BottomNavigationBarItem (icon: Icon(Icons.account_circle), title: Text("First")),
            BottomNavigationBarItem (icon: Icon(Icons.ac_unit), title: Text("Second")),
            BottomNavigationBarItem(icon: Icon(Icons.alarm), title: Text("Third"))
          
           ], onTap: (int index) => debugPrint("Tapped items: $index") ,),
          

      backgroundColor: Colors.blueAccent,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            CustomButton()

//            InkWell(
//              child: Text("Tap Me!",
//                style: TextStyle(fontSize: 23.4),),
//                  onTap: () => debugPrint("tapped!"),
//              )
            ]
          ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        final snackBar = SnackBar(content: Text("Heloo Boy!"),
        backgroundColor: Colors.amber.shade700,);
        Scaffold.of(context).showSnackBar(snackBar);
      },

    child: Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.pinkAccent,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Text("Button"),
    ),

    );
  }
}