import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
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
              title: Text("QRIS 081949980384"),
              content: Container(width: 200, height: 200, color: Colors.white,
                child: QrImageView(data: "081949980384", version: QrVersions.auto, size: 200)),
              actions: [TextButton(child: Text("OK"), onPressed: ()=>Navigator.pop(context))],
            ));
          },
        ),
      ),
    );
  }
}
