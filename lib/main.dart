import 'package:flutter/material.dart';
import 'dart:async';
void main(){runApp(MaterialApp(home:Splash(),debugShowCheckedModeBanner:false));}
class Splash extends StatefulWidget{State<Splash> createState()=>_SplashState();}
class _SplashState extends State<Splash>{
@override
void initState(){super.initState();Timer(Duration(seconds:2),(){Navigator.pushReplacement(context,MaterialPageRoute(builder:(_)=>Home()));});}
@override
Widget build(BuildContext c){return Scaffold(backgroundColor:Color(0xFF0F172A),body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Icon(Icons.code,size:100,color:Color(0xFF38BDF8)),Text("Supercoder Academy",style:TextStyle(color:Colors.white,fontSize:28,fontWeight:FontWeight.bold)),Text("V24 SUCCESS",style:TextStyle(color:Colors.white54)),SizedBox(height:20),CircularProgressIndicator(color:Color(0xFF38BDF8))])));}}
class Home extends StatelessWidget{
@override
Widget build(BuildContext c){return Scaffold(backgroundColor:Color(0xFF0F172A),body:Center(child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Icon(Icons.workspace_premium,size:80,color:Color(0xFF38BDF8)),Text("Supercoder Academy",style:TextStyle(color:Colors.white,fontSize:24,fontWeight:FontWeight.bold)),Container(margin:EdgeInsets.only(top:8),padding:EdgeInsets.symmetric(horizontal:12,vertical:6),decoration:BoxDecoration(color:Colors.amber.withOpacity(0.2),borderRadius:BorderRadius.circular(20)),child:Text("QRIS 081949980384",style:TextStyle(color:Colors.amber,fontWeight:FontWeight.bold))),SizedBox(height:24),ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Materi())),child:Text("Mulai Belajar"),style:ElevatedButton.styleFrom(backgroundColor:Color(0xFF38BDF8))),SizedBox(height:12),ElevatedButton(onPressed:()=>Navigator.push(c,MaterialPageRoute(builder:(_)=>Quiz())),child:Text("Quiz"),style:ElevatedButton.styleFrom(backgroundColor:Colors.amber))])));}}
class Materi extends StatefulWidget{State<Materi> createState()=>_MateriState();}
class _MateriState extends State<Materi>{
bool premium=false;
void bayar(){showDialog(context:context,builder:(x)=>AlertDialog(backgroundColor:Color(0xFF1E293B),title:Text("Buka Premium 50rb",style:TextStyle(color:Colors.white)),content:Column(mainAxisSize:MainAxisSize.min,children:[Container(height:160,width:160,color:Colors.white,child:Column(mainAxisAlignment:MainAxisAlignment.center,children:[Icon(Icons.qr_code,size:70,color:Colors.black),Text("081949980
