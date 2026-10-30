import 'package:flutter/material.dart';
void main() => runApp(const MaterialApp(home: GabunganApp(), debugShowCheckedModeBanner: false));

class GabunganApp extends StatefulWidget {
  const GabunganApp({super.key});
  @override State<GabunganApp> createState() => _GabunganAppState();
}
class _GabunganAppState extends State<GabunganApp> {
  int idx = 0;
  final pages = [const AcademyPage(), const QrisPage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[idx],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx, onTap: (i) => setState(() => idx = i),
        backgroundColor: const Color(0xFF1E293B),
        selectedItemColor: const Color(0xFF38BDF8),
        unselectedItemColor: Colors.white54,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'Academy 10 Hari'),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_2), label: 'QRIS BU SINTA'),
        ],
      ),
    );
  }
}

class AcademyPage extends StatelessWidget {
  const AcademyPage({super.key});
  final List<Map<String, String>> materi = const [
    {"hari":"Hari 01","judul":"SuperLearning","desk":"Mindset 10x Developer"},
    {"hari":"Hari 02","judul":"HTML","desk":"Rangka Website + Form WA Bu Sinta"},
    {"hari":"Hari 03","judul":"CSS","desk":"Flexbox Grid Dark Mode"},
    {"hari":"Hari 04","judul":"JS Dasar","desk":"Variable DOM Event"},
    {"hari":"Hari 05","judul":"JS Lanjut","desk":"Fetch API Todo List"},
    {"hari":"Hari 06","judul":"Git Github Pro","desk":"Version Control"},
    {"hari":"Hari 07","judul":"Tailwind CSS","desk":"CSS Tanpa Ngoding"},
    {"hari":"Hari 08","judul":"React Flutter","desk":"Framework Mahal"},
    {"hari":"Hari 09","judul":"Firebase","desk":"Database Gratis"},
    {"hari":"Hari 10","judul":"Deploy Cuan","desk":"Publish Play Store"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0F172A),
      appBar: AppBar(title
