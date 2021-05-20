import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CBTis 103',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: Interfaz(),
    );
  }
}

class Interfaz extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(),
      appBar: AppBar(
        title: Image.asset(
          "lib/assets/imagen/logo_system.png", 
          height: 50.0, 
          width: 140.0,
        ),

        actions: <Widget>[
          Image.asset("lib/assets/imagen/msj2021.png", height: 10.0,),
          Image.asset("lib/assets/imagen/calendar.jpg", height: 10.0,),

          InkWell(
            child: Icon(
              Icons.dehaze,
              size: 40.0,
              semanticLabel: "Menus desplegables",
            ),
            
            onTap: () {},
          ),
          
          Icon(
            Icons.search,
            size: 40.0, 
            color: Colors.pink, 
            semanticLabel: "Buscar contenido en la WEB",
          ),
          
          
          Padding(//Aquí se aplica la clase "PADDING", Y Observen
                  //donde se manda a llamar la clase "Icon".
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Icon(Icons.dehaze,
              size: 30.0,
              semanticLabel: "Menus desplegables",
            ),
          )
        ],
      ),
      body: Center(
        //child: Text('Programación'),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "Control de Fauna Local",
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              height: 150.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index){
                  return Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Container(
                      width: 200.0,
                      height: 150.0,
                      color: Colors.blue,
                      child: Text(
                        'elemento: $index',
                        style: TextStyle(
                          color: Colors.red, 
                          fontSize: 20.0
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            DefaultTabController(
              length: 3,
              initialIndex: 2,
              child: Expanded(
                child: Column(
                  children: <Widget>[
                    TabBar(
                      unselectedLabelColor: Colors.black,
                      indicatorColor: Colors.deepOrange,
                      labelColor: Colors.green,
                      tabs: [
                        Tab(text: "Generales"),
                        Tab(text: "Características",),
                        Tab(text: "Seguiiento",)
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          GridView.builder(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                            itemCount: 8,
                            itemBuilder: (context,lugarDelIndex){
                              return Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Container(
                                  width: 100.0,
                                  height: 150.0,
                                  color: Colors.blue,
                                  child: Text('elemento: $lugarDelIndex',),
                                ),
                              );
                            },
                          ),
                          //Container(color: Colors.lightGreen),
                          Container(color: Colors.pink),
                          Container(color: Colors.orange),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ),
          ],
        ),
      )
    );
  }
}


