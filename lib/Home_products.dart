import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class HomeProduct extends StatefulWidget {
  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  bool switch1 = false;
  bool switch2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black54,
        flexibleSpace: SafeArea(
          child: Container(
            color: Colors.black54,
            padding: EdgeInsets.only(right: 16),
            child: Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios_rounded, color: Colors.white,),),
                  Text("Home Product",
                    style: TextStyle(color: Colors.white, fontSize: 18),),

                ]),
          ),
        ),
      ),
      body: Container(
        color: Colors.black54,
        child: Column(
          children: [
            Container(
              width: 380,
              height: 50,
              decoration: BoxDecoration(
                  color:Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              padding: EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:[
                Text("Add Custom Heading",
                  style: TextStyle(color: Colors.grey),),
                TextButton(onPressed: () {},
                    child: Text(
                      "Add", style: TextStyle(color: Colors.orangeAccent),))
              ]),


            ),
            SizedBox(height: 15,),
            Container(padding: EdgeInsets.all(10),
              child: Align(alignment: Alignment.centerLeft,
                child: Text("Current Showcase", style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,),),),),

            Container(width:380,
              height:60,
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                  color:Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Trending",
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 16),),
                  FlutterSwitch(
                    activeColor: Colors.orangeAccent ,
                    inactiveColor: Colors.grey,width: 42.0,
                    toggleColor: Colors.black54,
                    height: 25.0,
                    toggleSize: 22.0,
                    value: switch1,
                    showOnOff: false,
                    onToggle: (val) {
                      setState(() {
                        switch1 = val;
                      });
                    },)

                ],
              ),

            ),
          SizedBox(height: 5,),

          Container(width:380,height:60,
            padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
           decoration: BoxDecoration(
               color:Colors.black54,
               borderRadius: BorderRadius.all(Radius.circular(8))
           ),
           child: GestureDetector(
            child: TextField( decoration: InputDecoration(
             icon: Icon(Icons.search),
              border: InputBorder.none,
              hintText: 'Search Product Here....'),
        ),
           ),
          ),
              SizedBox(height:5),
              Container(padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                decoration: BoxDecoration(
                    color:Colors.black54,
                    borderRadius: BorderRadius.all(Radius.circular(8))
                ),
                height: 250,
                      width: 380,

                      child: Column(
                        children: <Widget>[ Expanded(
                          child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemCount: 8,
                              itemBuilder: (BuildContext context, int index) =>
                                  Card(
                                    color: Colors.black38,
                                    child:Stack(children:[Container(
                                      height: 200,
                                        width: 170,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(8.0),
                                            image: DecorationImage(fit: BoxFit.cover,
                                                image: AssetImage('images/image1.jpeg'))),),

                                        Column(mainAxisAlignment: MainAxisAlignment.end,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children:[
                                              Text("Iron Face Half sleeve T-shirt",
                                                  style: TextStyle(
                                                      fontSize: 14.0,
                                                      color: Colors.white)),
                                         Text("\$${500}",
                                           textAlign: TextAlign.left,
                                           style: TextStyle(
                                             color: Colors.white,
                                             fontWeight: FontWeight.bold,),)]),
                                    ] ),
                                    ),
                          ),
                        ),
                        ],
                      ),
              ),
            Divider(height: 15,),

            Container(width:380,height:60
              ,padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              decoration: BoxDecoration(
                  color:Colors.black54,
                  borderRadius: BorderRadius.all(Radius.circular(8))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Picks",
                    style: TextStyle(
                        color: Colors.orangeAccent,
                        fontSize: 16),),
                  FlutterSwitch(activeColor: Colors.orangeAccent ,
                    inactiveColor: Colors.grey,
                    toggleColor: Colors.black54,
                    width: 42.0,
                    height: 25.0,
                    toggleSize: 22.0,
                    value: switch2,
                    showOnOff: false,
                    onToggle: (val) {
                      setState(() {
                        switch2 = val;
                      });
                    },
                  )
                ],
              ),

            ),
            SizedBox(height: 100,),
          Container(
            width:double.infinity,
            height:75,color: Colors.black54,
            padding: EdgeInsets.all(10.0),
            child:
            ElevatedButton(
                onPressed: (){},
                child: Text("Add"),
                style: ElevatedButton.styleFrom(
              primary: Colors.orangeAccent, textStyle: TextStyle(color: Colors.white),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),)),
          )



    ]
        ),
      ),
    );


  }
}
