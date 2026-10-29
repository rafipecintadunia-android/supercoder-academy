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
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MateriPage())),
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
  final materi = [
    {"hari": "Hari 01", "judul": "SuperLearning", "desk": "Cara belajar cepat 10x, Mindset Programmer", "isi": "🔥 MINDSET PROGRAMMER\n\n1. Belajar itu bukan hafalan, tapi praktek\n2. 20% teori 80% ngoding\n3. Jangan takut error - error itu guru\n\nTUGAS HARI 01:\n- Install VS Code\n- Buat akun Github\n- Tulis target: Kenapa mau jadi programmer?"},
    {"hari": "Hari 02", "judul": "HTML", "desk": "Struktur website, Tag, Form", "isi": "📄 HTML = Rangka Website\n\nTag penting:\n<html> <head> <body>\n<h1> Judul\n<p> Paragraf\n<a> Link\n<img> Gambar\n<form> Form\n\nCONTOH:\n<h1>Halo Rafi!</h1>\n<p>Ini website pertamaku</p>\n\nTUGAS:\nBikin file index.html dengan nama kamu!"},
    {"hari": "Hari 03", "judul": "CSS", "desk": "Styling, Flexbox, Grid, Responsive", "isi": "🎨 CSS = Baju Website\n\ncolor: red;\nbackground: blue;\nFlexbox: display:flex;\nGrid: display:grid;\n\nTRIK KEREN:\n.center { display:flex; justify-content:center; align-items:center; }\n\nTUGAS:\nKasih warna background biru gelap kayak aplikasi ini!"},
    {"hari": "Hari 04", "judul": "JS Dasar", "desk": "Variable, Function, DOM", "isi": "⚡ JS = Otak Website\n\nlet nama = 'Rafi';\nfunction sapa() { alert('Halo ' + nama); }\n\nDOM:\ndocument.getElementById('tombol').onclick = sapa;\n\nTUGAS:\nBikin tombol yang kalau diklik muncul 'Halo Pamekasan!'"},
    {"hari": "Hari 05", "judul": "JS Lanjut", "desk": "Async, Fetch API, Project", "isi": "🚀 JS LANJUT = Website Hidup\n\nfetch('https://api.github.com/users/rafi')\n  .then(res => res.json())\n  .then(data => console.log(data))\n\nPROJECT AKHIR:\nBikin aplikasi to-do list!\n- Input tugas\n- Tombol tambah\n- List tugas bisa dihapus\n\nKamu udah jadi Fullstack Pemula!"},
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
              leading: CircleAvatar(backgroundColor: Color(0xFF38BDF8), child: Text("${i+1}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
              title: Text("${materi[i]['hari']} - ${materi[i]['judul']}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              subtitle: Text(materi[i]['desk']!, style: TextStyle(color: Colors.white70)),
              trailing: Icon(Icons.play_arrow, color: Color(0xFF38BDF8)),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailMateri(judul: "${materi[i]['hari']} - ${materi[i]['judul']}", isi: materi[i]['isi']!))),
            ),
          );
        },
      ),
    );
  }
}

class DetailMateri extends StatelessWidget {
  final String judul, isi;
  DetailMateri({required this.judul, required this.isi});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      appBar: AppBar(title: Text(judul, style: TextStyle(fontSize: 14)), backgroundColor: Color(0xFF1E293B)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(padding: EdgeInsets.all(16), decoration: BoxDecoration(color: Color(0xFF1E293B), borderRadius: BorderRadius.circular(12)), child: Text(isi, style: TextStyle(color: Colors.white, fontSize: 16, height: 1.6))),
          SizedBox(height: 30),
          Row(children: [
            Expanded(child: ElevatedButton(onPressed: () => Navigator.pop(context), child: Text("Kembali"), style: ElevatedButton.styleFrom(backgroundColor: Colors.white24))),
            SizedBox(width: 12),
            Expanded(child: ElevatedButton(onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Mantap! $judul Selesai ✅"))); Navigator.pop(context); }, child: Text("Selesai ✅"), style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF38BDF8)))),
          ])
        ]),
      ),
    );
  }
}
