import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: ElevatedButton(
          child: Text("Lihat QRIS 081949980384"),
          onPressed: () {
            showDialog(context: context, builder: (_) => AlertDialog(
              title: Text("BU SINTA PECEL PINCUK\nNMID: ID1026475413104", style: TextStyle(fontSize: 12)),
              content: Container(
                width: 300, height: 300, color: Colors.white,
                child: Image.asset('assets/qris.png', fit: BoxFit.contain),
              ),
              actions: [TextButton(child: Text("OK"), onPressed: ()=>Navigator.pop(context))],
            ));
          },
        ),
      ),
    );
  }
}
