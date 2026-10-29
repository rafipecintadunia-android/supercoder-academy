import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: SupercoderApp(), debugShowCheckedModeBanner: false));
class SupercoderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Supercoder Academy", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 8),
          Text("Path 10 Hari Fullstack", style: TextStyle(fontSize: 18, color: Color(0xFF38BDF8))),
          Divider(color: Colors.white24, height: 30),
          Text("01 SuperLearning\n02 HTML\n03 CSS\n04 JS Dasar\n05 JS Lanjut", style: TextStyle(color: Colors.white70, fontSize: 16), textAlign: TextAlign.center),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (_) => MateriPage())); },
            child: Text("Mulai Belajar!", style: TextStyle(fontSize: 18, color: Colors.black)),
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF38BDF8), padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15), shape: StadiumBorder()),
          ),
          SizedBox(height: 20),
          Text("By Rafi Pamekasan", style: TextStyle(fontSize: 12, color: Colors.grey)),
        ]),
      ),
    );
  }
}
class MateriPage extends StatelessWidget {
  final List<Map<String, String>> materi = [
    {"hari": "Hari 01", "judul": "SuperLearning", "desk": "Cara belajar cepat 10x, Mindset Programmer"},
    {"hari": "Hari 02", "judul": "HTML", "desk": "Struktur website, Tag, Form"},
    {"hari": "Hari 03", "judul": "CSS", "desk": "Styling, Flexbox, Grid, Responsive"},
    {"hari": "Hari 04", "judul": "JS Dasar", "desk": "Variable, Function, DOM"},
    {"hari": "Hari 05", "judul": "JS Lanjut", "desk": "Async, Fetch API, Project"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      appBar: AppBar(title: Text("Materi Belajar"), backgroundColor: Color(0xFF1E293B)),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: materi.length,
        itemBuilder: (context, i) {
          return Card(
            color: Color(0xFF1E293B),
            child: ListTile(
              leading: CircleAvatar(backgroundColor: Color(0xFF38BDF8), child: Text("${i+1}", style: TextStyle(color: Colors.black))),
              title: Text("${materi[i]['hari']} - ${materi[i]['judul']}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text(materi[i]['desk']!, style: TextStyle(color: Colors.white70)),
              trailing: Icon(Icons.play_arrow, color: Color(0xFF38BDF8)),
              onTap: () { Navigator.push(context, MaterialPageRoute(builder: (_) => DetailMateri(judul: materi[i]['judul']!, desk: materi[i]['desk']!))); },
            ),
          );
        },
      ),
    );
  }
}
class DetailMateri extends StatelessWidget {
  final String judul, desk;
  DetailMateri({required this.judul, required this.desk});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      appBar: AppBar(title: Text(judul), backgroundColor: Color(0xFF1E293B)),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(judul, style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 10),
          Text(desk, style: TextStyle(fontSize: 16, color: Color(0xFF38BDF8))),
          Divider(color: Colors.white24, height: 30),
          Text("Selamat datang di materi $judul!\n\nDi sini nanti Rafi bisa isi video, teks, atau tugas praktek. Ini template fullstack path 10 hari buatan Rafi Pamekasan.", style: TextStyle(color: Colors.white70, fontSize: 16, height: 1.5)),
          SizedBox(height: 30),
          Center(child: ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Selesai Belajar"), style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF38BDF8)))),
        ]),
      ),
    );
  }
}
