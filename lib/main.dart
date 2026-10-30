import 'package:flutter/material.dart';
import 'academy_real.dart';

void main() => runApp(const FinalApp());

class FinalApp extends StatefulWidget {
  const FinalApp({super.key});
  @override
  State<FinalApp> createState() => _FinalAppState();
}

class _FinalAppState extends State<FinalApp> {
  int idx = 0;
  final pages = [const AcademyReal(), const QrisTab()];
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: pages[idx],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: idx,
          onTap: (i) => setState(() => idx = i),
          backgroundColor: const Color(0xFF1E293B),
          selectedItemColor: const Color(0xFF38BDF8),
          unselectedItemColor: Colors.white54,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Academy 10 Hari'),
            BottomNavigationBarItem(icon: Icon(Icons.qr_code_2), label: 'QRIS BU SINTA'),
          ],
        ),
      ),
    );
  }
}

class QrisTab extends StatelessWidget {
  const QrisTab({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(title: const Text('QRIS BU SINTA - BISA BAYAR', style: TextStyle(fontSize:14)), backgroundColor: Colors.green),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Text('Toko Bu Sinta - Pamekasan', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize:16)),
              const Text('081949980384 - NMID ID1026475413104', style: TextStyle(color: Color(0xFF38BDF8), fontSize:12)),
              const SizedBox(height:15),
              Container(padding: const EdgeInsets.all(10), decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16)), child: Image.asset('assets/qris.png')),
              const SizedBox(height:15),
              const Text('Bisa GoPay DANA OVO LinkAja ShopeePay', style: TextStyle(color: Colors.white70, fontSize:12)),
              const SizedBox(height:8),
              const Text('QRIS 208K ASLI TEST HIJAU V31 V33 V34', style: TextStyle(color: Colors.green, fontSize:10)),
            ],
          ),
        ),
      ),
    );
  }
}
