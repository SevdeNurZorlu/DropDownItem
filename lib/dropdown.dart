import 'package:flutter/material.dart';
class dropdown extends StatefulWidget {
  @override
  _dropdownState createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  List<String>renkler=["Kırmızı","Mavi","Sarı"];
  String secilenRenk="Kırmızı";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
           floatingActionButton: FloatingActionButton(
             onPressed: (){

             },
             child: Icon(Icons.add_circle),
           ),
      appBar: AppBar(
        title: Text("DropDown"),
      ),
      body:Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: <Widget>[

          DropdownButton<String>(items: renkler.map((oankirenkler){

            return DropdownMenuItem<String>(child: Text(oankirenkler),value: oankirenkler,);
      }).toList(),
            onChanged: (r){
            setState(() {
              secilenRenk=r;
            });
            },
            value: secilenRenk,
          )
],
        ),
      ),
    );
  }
}
