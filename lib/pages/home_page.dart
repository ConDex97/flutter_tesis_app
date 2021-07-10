
import 'package:flutter/material.dart';
import 'package:flutter_tesis_app/pages/restaurantes_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        centerTitle: true,
        title: Text("QARWASH",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.green,
      ),
      body:SafeArea(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                cardsMenuBody(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Padding cardsMenuBody() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    height: 110,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 5),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.group_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "RESTAURANTES",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    //Navigator.push(context,MaterialPageRoute(builder: (context) => ContactosModel()));
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>RestaurantesListPage()));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  child: Container(
                    height: 110,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 5),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.policy_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "HOTELES",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                  //  Navigator.push(context, MaterialPageRoute(builder: (context) => DependenciasModel()));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Container(
                    height: 110,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 5),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.group_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "TIENDAS",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    //Navigator.push(context,MaterialPageRoute(builder: (context) => ContactosModel()));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  child: Container(
                    height: 110,
                    width: 130,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(0, 5),
                          blurRadius: 3,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.policy_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        Text(
                          "SITIOS TURÍSTICOS",
                          style: TextStyle(color: Colors.white, fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  onTap: () {
                    //  Navigator.push(context, MaterialPageRoute(builder: (context) => DependenciasModel()));
                  },
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
          ],
        ),
      );
  }
}
