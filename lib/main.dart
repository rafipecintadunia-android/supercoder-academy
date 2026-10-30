import 'package:flutter/material.dart';
void main()=>runApp(MaterialApp(debugShowCheckedModeBanner:false,home:QRISPage()));
class QRISPage extends StatelessWidget{
  @override
  Widget build(BuildContext c){
    return Scaffold(
      backgroundColor: Color(0xFF111111),
      body: Center(
        child: Column(mainAxisSize:MainAxisSize.min,children:[
          Text("BU SINTA PECEL PINCUK",style:TextStyle(color:Colors.white,fontWeight:FontWeight.bold)),
          Text("NMID ID1026475413104",style:TextStyle(color:Colors.white70,fontSize:12)),
          SizedBox(height:20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor:Colors.green),
            child: Text("Lihat QRIS BISA BAYAR 081949980384",style:TextStyle(color:Colors.white)),
            onPressed:(){
              showDialog(context:c,builder:(_)=>AlertDialog(
                title: Text("QRIS BISA BAYAR"),
                content: Container(width:300,height:300,color:Colors.white,child:Image.asset('assets/qris.png')),
                actions:[TextButton(child:Text("OK"),onPressed:()=>Navigator.pop(c))],
              ));
            },
          )
        ]),
      ),
    );
  }
}
