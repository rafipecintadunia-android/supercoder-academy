import 'package:flutter/material.dart';
void main()=>runApp(const MaterialApp(home:Root(),debugShowCheckedModeBanner:false));
class Root extends StatefulWidget{const Root({super.key});@override State<Root> createState()=>_RootState();}
class _RootState extends State<Root>{
int idx=0;
final pages=[const Academy(),const Qris()];
@override Widget build(BuildContext c){return Scaffold(body:pages[idx],bottomNavigationBar:BottomNavigationBar(currentIndex:idx,onTap:(i)=>setState(()=>idx=i),backgroundColor:const Color(0xFF1E293B),selectedItemColor:const Color(0xFF38BDF8),unselectedItemColor:Colors.white54,items:const[BottomNavigationBarItem(icon:Icon(Icons.school),label:'Academy 10 Hari'),BottomNavigationBarItem(icon:Icon(Icons.qr_code_2),label:'QRIS BU SINTA')],));}
}
class Academy extends StatelessWidget{
const Academy({super.key});
@override Widget build(BuildContext context){
final materi=[
{"h":"Hari 01","j":"SuperLearning","d":"Mindset 10x","c":0xFF38BDF8},
{"h":"Hari 02","j":"HTML","d":"Rangka Website + Form WA","c":0xFFF97316},
{"h":"Hari 03","j":"CSS","d":"Flexbox Grid Dark Mode","c":0xFFA855F7},
{"h":"Hari 04","j":"JS Dasar","d":"Variable DOM Event","c":0xFFEAB308},
{"h":"Hari 05","j":"JS Lanjut","d":"Fetch API + Todo List","c":0xFF10B981},
{"h":"Hari 06","j":"Git Github Pro","d":"Version Control","c":0xFFEF4444},
{"h":"Hari 07","j":"Tailwind CSS","d":"CSS Tanpa Ngoding","c":0xFF06B6D4},
{"h":"Hari 08","j":"React Flutter Lanjut","d":"Framework Mahal","c":0xFF3B82F6},
{"h":"Hari 09","j":"Firebase","d":"Database Gratis","c":0xFFF59E0B},
{"h":"Hari 10","j":"Deploy Cuan","d":"Play Store Freelance","c":0xFFEC4899},
];
return Scaffold(backgroundColor:const Color(0xFF0F172A),appBar:AppBar(title:const Text("10 Hari Fullstack - Rafi"),backgroundColor:const Color(0xFF1E293B)),body:ListView.builder(padding:const EdgeInsets.all(12),itemCount:materi.length,itemBuilder:(c,i){var m=materi[i];return Card(color:const Color(0xFF1E293B),margin:const EdgeInsets.only(bottom:10),child:ListTile(leading:CircleAvatar(backgroundColor:Color(m["c"] as int),child:Text("${i+1}",style:const TextStyle(color:Colors.black,fontWeight:FontWeight.bold))),title:Text("${m["h"]} - ${m["j"]}",style:const TextStyle(color:Colors.white,fontWeight:FontWeight.bold)),subtitle:Text(m["d"] as String,style:const TextStyle(color:Colors.white70)),trailing:Icon(Icons.play_arrow,color:Color(m["c"] as int)),onTap:(){ScaffoldMessenger.of(c).showSnackBar(SnackBar(content:Text("${m["h"]} Selesai"),backgroundColor:Color(m["c"] as int)));}));}));
}
}
class Qris extends StatelessWidget{
const Qris({super.key});
@override Widget build(BuildContext context){
return Scaffold(backgroundColor:const Color(0xFF0F172A),appBar:AppBar(title:const Text("QRIS BU SINTA - BISA BAYAR"),backgroundColor:Colors.green),body:Center(child:SingleChildScrollView(padding:const EdgeInsets.all(20),child:Column(children:[const Text("Toko Bu Sinta - Pamekasan",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold,fontSize:18)),const SizedBox(height:4),const Text("081949980384 - NMID ID1026475413104",style:TextStyle(color:Color(0xFF38BDF8),fontSize:12)),const SizedBox(height:20),Container(padding:const EdgeInsets.all(12),decoration:BoxDecoration(color:Colors.white,borderRadius:BorderRadius.circular(16)),child:Image.asset('assets/qris.png',width:300)),const SizedBox(height:20),const Text("Bisa Bayar GoPay DANA OVO LinkAja ShopeePay",style:TextStyle(color:Colors.white70)),const SizedBox(height:8),Container(padding:const EdgeInsets.symmetric(horizontal:12,vertical:6),decoration:BoxDecoration(color:Colors.green.withOpacity(0.2),borderRadius:BorderRadius.circular(8)),child:const Text("QRIS 208KB ASLI - V38 FINAL 2 TAB",style:TextStyle(color:Colors.green,fontSize:11)))])),);
}
}
