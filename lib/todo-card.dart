import 'package:flutter/material.dart';
class Todocard extends StatelessWidget {
  const Todocard({super.key});

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
            widthFactor: 0.9,
             child: Container(
               margin: EdgeInsets.only(top:33),
               padding: EdgeInsets.all(22),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text("data ddd" , style: TextStyle(color: Colors.white , fontSize: 22),),
                   Icon(Icons.close, size: 27, color: Colors.red,)
                 ],
               ),
               decoration: BoxDecoration(
                 color: Color.fromRGBO(209, 224, 224, 0.2),
                 borderRadius: BorderRadius.circular(11)
               ), 
             ),
           );
  }
}