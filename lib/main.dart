import 'package:flutter/material.dart';
import 'dart:async';
void main(){runApp(MaterialApp(home:Splash(),debugShowCheckedModeBanner:false));}
class Splash extends StatefulWidget{State<Splash> createState()=>_Splash();}
class _Splash extends State<Splash>{
@override
void initState(){super.initState();Timer(Duration(seconds:3),(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(_)=>Home()));});}
@override
Widget build(BuildContext context){
return Scaffold(backgroundColor:Color(0xFF0F172A),body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Icon(Icons.code,size:100,color:Color(0xFF38BDF8)),Text("Supercoder",style:TextStyle(fontSize:32,fontWeight:FontWeight.bold,color:Colors.white)),Text("Academy",style:TextStyle(fontSize:32,fontWeight:FontWeight.bold,color:Color(0xFF38BDF8))),Text("V23 FINAL 081949980384",style:TextStyle(color:Colors.white54)),SizedBox(height:30),CircularProgressIndicator(color:Color(0xFF38BDF8))])));}}
class Home extends StatelessWidget{
@override
Widget build(BuildContext context){
return Scaffold(backgroundColor:Color(0xFF0F172A),body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Icon(Icons.workspace_premium,size:80,color:Color(0xFF38BDF8)),Text("Supercoder Academy",style:TextStyle(fontSize:28,fontWeight:FontWeight.bold,color:Colors.white)),Container(margin:EdgeInsets.only(top:8),padding:EdgeInsets.symmetric(horizontal:12,vertical:6),decoration:BoxDecoration(color:Colors.amber.withOpacity(0.2),borderRadius:BorderRadius.circular(20)),child:Text("QRIS 081949980384",style:TextStyle(color:Colors.amber,fontSize:12,fontWeight:FontWeight.bold))),SizedBox(height:24),ElevatedButton(onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>Materi())),child:Text("Mulai Belajar!"),style:ElevatedButton.styleFrom(backgroundColor:Color(0xFF38BDF8))),SizedBox(height:12),ElevatedButton(onPressed:()=>Navigator.push(context,MaterialPageRoute(builder:(_)=>Quiz())),child:Text("Quiz + Sertifikat"),style:ElevatedButton.styleFrom(backgroundColor:Colors.amber))])));}}
class Materi extends StatefulWidget{State<Materi> createState()=>_MateriState();}
class _MateriState extends State<Materi>{
bool premium=false;
void showBayar(){
showDialog(context:context,builder:(c)=>AlertDialog(backgroundColor:Color(0xFF1E293B),title:Text("Buka Premium 50rb",style:TextStyle(color:Colors.white)),content:Column(mainAxisSize:MainAxisSize.min,children:[Container(height:180,width:180,color:Colors.white,child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Icon(Icons.qr_code,size:80,color:Colors.black),Text("QRIS 50.000",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold)),Text("081949980384",style:TextStyle(color:Colors.black,fontWeight:FontWeight.bold)),Text("Rafi Pamekasan",style:TextStyle(color:Colors.black54,fontSize:10))])),SizedBox(height:12),Text("Transfer ke 081949980384",style:TextStyle(color:Colors.white70,fontSize:12)),SizedBox(height:6),Container(padding:EdgeInsets.all(8),decoration:BoxDecoration(color:Colors.amber.withOpacity(0.2),borderRadius:BorderRadius.circular(8)),child:Text("WA 081949980384 - Kirim bukti",style:TextStyle(color:Colors.amber,fontSize:11)))]),actions:[TextButton(onPressed:()=>Navigator.pop(context),child:Text("Nanti")),ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Colors.amber),onPressed:(){setState((){premium=true;});Navigator.pop(context);},child:Text("Sudah Bayar",style:TextStyle(color:Colors.black)))]));
}
@override
Widget build(BuildContext context){
return Scaffold(backgroundColor:Color(0xFF0F172A),appBar:AppBar(title:Text(premium?"PREMIUM UNLOCKED":"FREE 5 HARI"),backgroundColor:Color(0xFF1E293B),actions:[IconButton(onPressed:(){if(premium){setState((){premium=false;});}else{showBayar();}},icon:Icon(Icons.workspace_premium,color:Colors.amber))]),body:ListView(padding:EdgeInsets.all(12),children:[Container(width:double.infinity,color:premium?Colors.green:Colors.amber,padding:EdgeInsets.all(8),child:Text(premium?"Semua terbuka":"Hari 6-10 terkunci - 50rb ke 081949980384",style:TextStyle(color:Colors.black,fontSize:10),textAlign:TextAlign.center)),SizedBox(height:8),myCard(1,"Hari 01","FREE",Color(0xFF38BDF8),false),myCard(2,"Hari 02","FREE",Color(0xFFF97316),false),myCard(3,"Hari 03","FREE",Color(0xFF8B5CF6),false),myCard(4,"Hari 04","FREE",Color(0xFFFACC15),false),myCard(5,"Hari 05","FREE",Color(0xFF10B981),false),myCard(6,"Hari 06","PREMIUM",Color(0xFFEF4444),!premium),myCard(7,"Hari 07","PREMIUM",Color(0xFF06B6D4),!premium),myCard(8,"Hari 08","PREMIUM",Color(0xFF3B82F6),!premium),myCard(9,"Hari 09","PREMIUM",Color(0xFFF59E0B),!premium),myCard(10,"Hari 10","PREMIUM",Color(0xFFEC4899),!premium)]));
}
Widget myCard(int no,String
> █
> █ENDOFFILE
