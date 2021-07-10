

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class RestaurantesListPage extends StatefulWidget {
  @override
  _RestaurantesListPageState createState() => _RestaurantesListPageState();
}

class _RestaurantesListPageState extends State<RestaurantesListPage> {
  CollectionReference restfirebase= FirebaseFirestore.instance.collection('restaurante');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Restaurantes"),
      ),
      body: StreamBuilder(
        stream: restfirebase.snapshots(),
        builder: (BuildContext context,AsyncSnapshot<dynamic>snapshot){
          if(snapshot.hasError){
            return Center(
              child: Text("Hubo problemas"),
            );
          }
          List <DocumentSnapshot> docs = snapshot.data.docs;

          if(snapshot.hasData){
            return Center(
              child: ListView.builder(
                itemCount: docs.length,
                  itemBuilder: (BuildContext context,int index){
                  return ListTile(
                    title: Text(docs[index]['nombre']),
                  );
                  }
              ),
            );
          }


          return Text("Loading");
        },
      )

    );
  }
}
