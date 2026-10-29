import 'package:flutter/material.dart';
void main() => runApp(MaterialApp(home: SupercoderApp(), debugShowCheckedModeBanner: false));

class SupercoderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.code, size: 80, color: Color(0xFF38BDF8)),
          SizedBox(height: 10),
          Text("Supercoder Academy", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white)),
          Text("Path 10 Hari Fullstack", style: TextStyle(fontSize: 16, color: Color(0xFF38BDF8))),
          SizedBox(height: 20),
          Container(padding: EdgeInsets.all(12), margin: EdgeInsets.symmetric(horizontal: 30), decoration: BoxDecoration(color: Color(0xFF1E293B), borderRadius: BorderRadius.circular(12)), child: Column(children: [
            Row(children: [Icon(Icons.check_circle, color: Colors.green, size: 18), SizedBox(width: 8), Text("5 Materi Lengkap", style: TextStyle(color: Colors.white70))]),
            SizedBox(height: 6),
            Row(children: [Icon(Icons.check_circle, color: Colors.green, size: 18), SizedBox(width: 8), Text("Code Example + Tugas", style: TextStyle(color: Colors.white70))]),
            SizedBox(height: 6),
            Row(children: [Icon(Icons.check_circle, color: Colors.green, size: 18), SizedBox(width: 8), Text("By Rafi Pamekasan", style: TextStyle(color: Colors.white70))]),
          ])),
          SizedBox(height: 25),
          ElevatedButton(
            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => MateriPage())),
            child: Text("Mulai Belajar! 🚀", style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold)),
            style: ElevatedButton.styleFrom(backgroundColor: Color(0xFF38BDF8), padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16), shape: StadiumBorder()),
          ),
        ]),
      ),
    );
  }
}

class MateriPage extends StatelessWidget {
  final materi = [
    {
      "hari": "Hari 01",
      "judul": "SuperLearning",
      "desk": "Cara belajar cepat 10x, Mindset Programmer",
      "warna": 0xFF38BDF8,
      "isi": """
🚀 HARI 01 - SUPER LEARNING

KENAPA HARUS JADI PROGRAMMER 2026?
• Gaji junior 5-15jt, remote kerja dari Pamekasan bisa gaji dollar
• AI gak ganti programmer, tapi programmer pake AI ganti yang gak pake AI

3 MINDSET WAJIB:

1. 20% TEORI 80% PRAKTEK
Jangan nonton tutorial 10 jam. Nonton 30 menit, langsung ngoding 2 jam.

2. ERROR = GURU TERBAIK
Kalau merah, jangan panik. Copy error -> paste di ChatGPT. 90% programmer kerjaannya debug.

3. FEYNMAN TECHNIQUE
Belajar sesuatu, jelasin kayak ngajarin anak SD. Kalau bisa jelasin simple, berarti paham.

SISTEM BELAJAR 10 HARI INI:
06:00-07:00 Teori (baca materi di app ini)
19:00-22:00 Praktek (ngoding tanpa nonton video)
Tiap hari push ke Github

TOOLS WAJIB INSTALL HARI INI:
1. VS Code
2. Git + Github akun
3. Node.js
4. Termux (kalau pake HP)

TUGAS HARI 01 - KUMPUL MALAM INI:
Bikin file TARGET.txt isi:
- Kenapa kamu mau jadi programmer?
- Target 3 bulan ke depan mau bikin app apa?
- Tulis janji: "Saya Rafi, akan ngoding tiap hari 3 jam"

Push ke Github. Kalau gak, jangan lanjut Hari 02!
"""
    },
    {
      "hari": "Hari 02",
      "judul": "HTML - Rangka Website",
      "desk": "Struktur website, Tag, Form",
      "warna": 0xFFF97316,
      "isi": """
📄 HARI 02 - HTML FUNDAMENTAL

HTML itu kayak RANGKA manusia. Tanpa HTML, website gak punya struktur.

STRUKTUR WAJIB:

<!DOCTYPE html>
<html>
  <head>
    <title>Supercoder Rafi</title>
  </head>
  <body>
    <h1>Halo Pamekasan!</h1>
    <p>Saya belajar HTML hari 02</p>
  </body>
</html>

TAG PALING SERING DIPAKE:

1. Heading: <h1> sampai <h6>
   <h1> Paling besar buat judul

2. Paragraf & Text:
   <p> Paragraf
   <b> Bold, <i> Italic
   <br> Enter, <hr> Garis

3. Link & Gambar:
   <a href="https://google.com"> Klik </a>
   <img src="foto.jpg" alt="Foto Rafi">

4. List:
   <ul> <li> List titik
   <ol> <li> List angka

5. Form (PENTING!):
   <form>
     <input type="text" placeholder="Nama">
     <input type="email" placeholder="Email">
     <input type="password">
     <button> Kirim </button>
   </form>

6. Layout Modern:
   <div> Kotak
   <header> <nav> <main> <footer>

TUGAS REAL HARI 02:
Bikin file index.html isinya:
- Foto kamu
- Nama, Asal Pamekasan
- 3 Skill yang mau dipelajari
- Form kontak: Nama + Pesan + Tombol WA ke nomor kamu

Contoh Form WA:
<form action="https://wa.me/6281234567890">
  <input name="text" placeholder="Pesan...">
  <button>Kirim WA</button>
</form>

Hasilnya screenshot, taruh di status WA!
"""
    },
    {
      "hari": "Hari 03",
      "judul": "CSS - Baju Website",
      "desk": "Styling, Flexbox, Grid, Responsive",
      "warna": 0xFF8B5CF6,
      "isi": """
🎨 HARI 03 - CSS BIKIN WEBSITE CANTIK

Kalau HTML rangka, CSS itu BAJU nya. Yang bikin app kamu dark mode keren itu CSS.

3 CARA PASANG CSS:

1. Inline: <h1 style="color:blue">
2. Internal: <style> h1{color:blue} </style>
3. External: <link rel="stylesheet" href="style.css"> (INI YANG PROFESIONAL)

SELECTOR WAJIB HAFAL:

* { } = semua element
h1 { } = semua h1
.class { } = class="nama"
#id { } = id="nama"

PROPERTY PALING DIPAKE:

color: #38BDF8; (warna text)
background: #0F172A; (background biru gelap kayak app ini)
padding: 20px; (jarak dalam)
margin: 20px; (jarak luar)
border-radius: 12px; (biar kotak tumpul)
font-size: 16px;

FLEXBOX - BIKIN TENGAH OTOMATIS (PENTING!):
.container {
  display: flex;
  justify-content: center; /* tengah kiri kanan */
  align-items: center; /* tengah atas bawah */
  gap: 12px;
}

GRID - BIKIN KOLOM-KOLOM:
.container {
  display: grid;
  grid-template-columns: 1fr 1fr 1fr; /* 3 kolom */
}

COPY PASTE TEMPLATE DARK MODE KAYA APP INI:

body {
  background: #0F172A;
  color: white;
  font-family: sans-serif;
}
.card {
  background: #1E293B;
  padding: 16px;
  border-radius: 12px;
}
.btn {
  background: #38BDF8;
  color: black;
  padding: 12px 24px;
  border-radius: 999px;
  border: none;
}

TUGAS REAL HARI 03:
Ambil index.html Hari 02, tambahin style.css biar:
- Background #0F172A
- Semua jadi card kayak di app ini
- Tombol jadi biru bulat
- Responsive di HP (pakai @media)

Kalau jadi, 90% mirip Instagram!
"""
    },
    {
      "hari": "Hari 04",
      "judul": "JS Dasar - Otak Website",
      "desk": "Variable, Function, DOM, Event",
      "warna": 0xFFFACC15,
      "isi": """
⚡ HARI 04 - JAVASCRIPT DASAR

HTML = Rangka, CSS = Baju, JS = OTAK yang bikin bisa diklik!

VARIABLE - TEMPAT SIMPAN DATA:

let nama = "Rafi"; // bisa diganti
const umur = 19; // gak bisa diganti
var kota = "Pamekasan"; // jangan pake var lagi

Tipe data:
let angka = 100;
let teks = "Halo";
let jomblo = true;
let daftar = ["HTML","CSS","JS"];
let orang = {nama:"Rafi", kota:"Pamekasan"};

FUNCTION - MESIN:

function sapa(nama) {
  return "Halo " + nama + " dari Pamekasan!";
}

console.log(sapa("Rafi")); // Halo Rafi dari Pamekasan!

Arrow function modern:
const sapa2 = (nama) => "Halo " + nama;

DOM - NGATUR HTML PAKE JS:

// Ambil element
const tombol = document.querySelector("button");
const judul = document.getElementById("judul");

// Ganti isi
judul.innerText = "Di klik Rafi!";

// Kasih event
tombol.addEventListener("click", () => {
  alert("Tombol diklik!");
  judul.style.color = "#38BDF8";
});

IF ELSE & LOOP:

if (umur >= 17) {
  console.log("Boleh ngoding");
} else {
  console.log("Belajar dulu");
}

for (let i=1; i<=5; i++) {
  console.log("Hari " + i);
}

CONTOH NYATA - TOMBOL SEPERTI DI APP INI:

<button id="btn">Mulai Belajar!</button>
<h1 id="judul">Supercoder</h1>

<script>
  document.getElementById("btn").onclick = () => {
    document.getElementById("judul").innerText = "Siap Belajar Hari 04!";
    document.body.style.background = "#38BDF8";
  };
</script>

TUGAS REAL HARI 04:
Bikin 1 halaman ada:
1. Input nama
2. Tombol "Sapa Saya"
3. Kalau diklik, muncul "Halo [nama] - Calon Programmer Pamekasan!"
4. Plus jam digital yang jalan tiap detik (pakai setInterval)

Ini 80% logika aplikasi kayak Gojek!
"""
    },
    {
      "hari": "Hari 05",
      "judul": "JS Lanjut - Website Hidup",
      "desk": "Async, Fetch API, LocalStorage, Project",
      "warna": 0xFF10B981,
      "isi": """
🚀 HARI 05 - JAVASCRIPT LANJUT = LEVEL PRO

Ini yang bikin website bisa ambil data Instagram, simpan data, kayak app beneran.

ASYNC - BIAR GAK NGE-LAG:

// Cara lama callback hell ❌
fetchData(() => {
  fetchLagi(() => {
    fetchLagi(() => { ... })
  })
});

// Cara modern async await ✅
async function ambilData() {
  const res = await fetch("https://api.github.com/users/rafipecintadunia-android");
  const data = await res.json();
  console.log(data);
}
ambilData();

FETCH API - AMBIL DATA DARI INTERNET:

// Ambil data Github kamu
fetch("https://api.github.com/users/rafipecintadunia-android")
  .then(r => r.json())
  .then(data => {
    document.body.innerHTML += "<p>Repo: " + data.public_repos + "</p>";
  });

// Kirim data
fetch("https://jsonplaceholder.typicode.com/posts", {
  method: "POST",
  body: JSON.stringify({title: "Belajar JS", userId: 1})
});

LOCALSTORAGE - SIMPAN DATA DI HP (KAYAK APK INI!):

// Simpan
localStorage.setItem("nama", "Rafi");
localStorage.setItem("progress", "Hari 05");

// Ambil
const nama = localStorage.getItem("nama"); // Rafi

// Hapus
localStorage.removeItem("nama");

Ini yang bikin kalau kamu tutup app, progress gak hilang!

PROJECT AKHIR HARI 05 - BIKIN TODO LIST (WAJIB!):

<input id="input" placeholder="Tugas...">
<button id="add">Tambah</button>
<ul id="list"></ul>

<script>
let tugas = JSON.parse(localStorage.getItem("tugas") || "[]");

function render() {
  list.innerHTML = "";
  tugas.forEach((t,i) => {
    list.innerHTML += "<li>" + t + " <button onclick='hapus("+i+")'>x</button></li>";
  });
  localStorage.setItem("tugas", JSON.stringify(tugas));
}

add.onclick = () => {
  tugas.push(input.value);
  input.value = "";
  render();
}
function hapus(i) { tugas.splice(i,1); render(); }
render();
</script>

KALAU TODO INI JADI, KAMU UDAH LEVEL JUNIOR DEVELOPER!

LANJUTAN SETELAH 5 HARI INI (HARI 06-10):
Hari 06: Git & Github Pro
Hari 07: Tailwind CSS
Hari 08: React / Flutter Lanjut
Hari 09: Firebase Database
Hari 10: Deploy ke Play Store + Cari Client

TUGAS FINAL:
1. Bikin todo list di atas
2. Deploy ke Vercel (gratis)
3. Share link di WA ke aku
4. Lanjut bikin versi APK pakai Flutter kayak yang kamu udah bisa!

KAMU UDAH SELESAI 5 HARI! TINGGAL 5 HARI LAGI JADI FULLSTACK!
"""
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      appBar: AppBar(title: Text("Materi Belajar - 5 Hari"), backgroundColor: Color(0xFF1E293B)),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: materi.length,
        itemBuilder: (context, i) {
          return Card(
            color: Color(0xFF1E293B),
            margin: EdgeInsets.only(bottom: 12),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            child: ListTile(
              contentPadding: EdgeInsets.all(12),
              leading: CircleAvatar(backgroundColor: Color(materi[i]['warna'] as int), child: Text("${i+1}", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))),
              title: Text("${materi[i]['hari']} - ${materi[i]['judul']}", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)),
              subtitle: Padding(padding: EdgeInsets.only(top: 4), child: Text(materi[i]['desk']! as String, style: TextStyle(color: Colors.white70, fontSize: 12))),
              trailing: Icon(Icons.play_arrow_rounded, color: Color(materi[i]['warna'] as int), size: 32),
              onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailMateri(judul: "${materi[i]['hari']} - ${materi[i]['judul']}", isi: materi[i]['isi']! as String, warna: materi[i]['warna'] as int))),
            ),
          );
        },
      ),
    );
  }
}

class DetailMateri extends StatelessWidget {
  final String judul, isi;
  final int warna;
  DetailMateri({required this.judul, required this.isi, required this.warna});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0F172A),
      appBar: AppBar(title: Text(judul, style: TextStyle(fontSize: 13)), backgroundColor: Color(0xFF1E293B)),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(padding: EdgeInsets.all(8), decoration: BoxDecoration(color: Color(warna).withOpacity(0.2), borderRadius: BorderRadius.circular(8)), child: Row(children: [Icon(Icons.menu_book, color: Color(warna), size: 18), SizedBox(width: 8), Expanded(child: Text("Materi Lengkap - Baca + Praktek 2 Jam", style: TextStyle(color: Color(warna), fontWeight: FontWeight.bold, fontSize: 12)))])),
          SizedBox(height: 16),
          Container(padding: EdgeInsets.all(16), decoration: BoxDecoration(color: Color(0xFF1E293B), borderRadius: BorderRadius.circular(12)), child: Text(isi, style: TextStyle(color: Colors.white, fontSize: 14, height: 1.7))),
          SizedBox(height: 24),
          SizedBox(width: double.infinity, child: ElevatedButton.icon(onPressed: () { ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Mantap! $judul Selesai ✅ Lanjut hari berikutnya!"), backgroundColor: Color(warna))); Navigator.pop(context); }, icon: Icon(Icons.check, color: Colors.black), label: Text("Tandai Selesai & Lanjut ✅", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)), style: ElevatedButton.styleFrom(backgroundColor: Color(warna), padding: EdgeInsets.symmetric(vertical: 14), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))))),
          SizedBox(height: 12),
          SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () => Navigator.pop(context), child: Text("Kembali ke Daftar", style: TextStyle(color: Colors.white70)), style: OutlinedButton.styleFrom(side: BorderSide(color: Colors.white24)))),
        ]),
      ),
    );
  }
}
