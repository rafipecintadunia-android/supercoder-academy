import 'package:flutter/material.dart';
void main(){runApp(MaterialApp(home:Home(),debugShowCheckedModeBanner:false));}
class Home extends StatelessWidget{
@override
Widget build(BuildContext c){
return Scaffold(
backgroundColor:Color(0xFF0F172A),
body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[
Icon(Icons.check_circle,size:100,color:Colors.green),
Text("V25 SUCCESS",style:TextStyle(color:Colors.white,fontSize:32,fontWeight:FontWeight.bold)),
Text("081949980384",style:TextStyle(color:Colors.amber,fontSize:20)),
SizedBox(height:20),
ElevatedButton(onPressed:(){showDialog(context:c,builder:(_)=>AlertDialog(title:Text("QRIS 081949980384"),content:Container(height:150,width:150,color:Colors.white,child:Center(child:Text("QRIS\n081949980384",textAlign:TextAlign.center))),actions:[TextButton(onPressed:()=>Navigator.pop(c),child:Text("OK"))]));},child:Text("Lihat QRIS 081949980384"))
])));}}
