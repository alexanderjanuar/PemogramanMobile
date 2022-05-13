import 'package:flutter/material.dart';

class Catalog extends StatefulWidget {
  const Catalog({Key? key}) : super(key: key);

  @override
  State<Catalog> createState() => _CatalogState();
}

class _CatalogState extends State<Catalog> {

  Widget CatalogList(String judul, String gambar) {
    return Container(
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      height: 80,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 4,
          offset: Offset(0, 3), // changes position of shadow
        ),
      ], borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(gambar),
            radius: 25,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            judul,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xffffFDF3F3),
        child: ListView(
          children: [
            Container(
              height: 180,
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFFFF2994A), Color(0xFFFFF2C94C)])),
              child: const Padding(
                padding: EdgeInsets.only(top: 70),
                child: Text("Catalog",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold)),
              ),
            ),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text("Language",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
            CatalogList("Belajar Python", "asset/Python.png"),
            CatalogList("Belajar HTML", "asset/WebDev.jpeg"),
            CatalogList("Belajar Swift", "asset/apple-swift.jpg"),
            SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Text("Skill Path",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500)),
            ),
            CatalogList("Analisa Data (Python)", "asset/AnalyzeData.png"),
            CatalogList("Basic Machine Learning ", "asset/Python.png"),
            SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}
