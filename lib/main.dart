import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner:false,home:MainPage()));
class MainPage extends StatefulWidget{
  @override State<MainPage> createState()=>_MainPageState();
}
class _MainPageState extends State<MainPage>{
  int idx=0;
  @override
  Widget build(BuildContext c){
    return Scaffold(
      backgroundColor: Color(0xFF0F0F0F),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white54,
        currentIndex: idx,
        onTap: (i)=>setState(()=>idx=i),
        items:[
          BottomNavigationBarItem(icon:Icon(Icons.school),label:"Academy"),
          BottomNavigationBarItem(icon:Icon(Icons.qr_code),label:"QRIS BU SINTA"),
        ],
      ),
      body: idx==0 ? AcademyPage() : QRISPage(),
    );
  }
}
class AcademyPage extends StatelessWidget{
  @override
  Widget build(BuildContext c){
    return Center(child: Column(mainAxisAlignment:MainAxisAlignment.center,children:[
      Icon(Icons.code,size:80,color:Colors.green),
      SizedBox(height:20),
      Text("SUPERCODER ACADEMY",style:TextStyle(color:Colors.white,fontSize:22,fontWeight:FontWeight.bold)),
      SizedBox(height:10),
      Text("Belajar coding dari 0 sampai jago",style:TextStyle(color:Colors.white54)),
      SizedBox(height:30),
      Padding(padding:EdgeInsets.all(20),child:Text("Ganti bagian ini dengan isi Academy kamu yang asli (kelas, materi, dll). QRIS ada di tab sebelah.",textAlign:TextAlign.center,style:TextStyle(color:Colors.white30))),
    ]));
  }
}
class QRISPage extends StatelessWidget{
  @override
  Widget build(BuildContext c){
    return Container(
      color: Colors.white,
      child: Center(
        child: Column(mainAxisAlignment:MainAxisAlignment.center,children:[
          Text("BU SINTA PECEL PINCUK",style:TextStyle(fontWeight:FontWeight.bold,fontSize:18,color:Colors.black)),
          Text("NMID ID1026475413104",style:TextStyle(color:Colors.black54)),
          SizedBox(height:20),
          Image.asset('assets/qris.png',width:320,height:450,fit:BoxFit.contain),
          SizedBox(height:10),
          Text("081949980384 - BISA BAYAR",style:TextStyle(color:Colors.green,fontWeight:FontWeight.bold)),
        ]),
      ),
    );
  }
}
